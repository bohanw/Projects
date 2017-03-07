structure ntermLib :> ntermLib =
struct

open HolKernel boolLib Parse bossLib nomsetTheory ntermTheory simpLib

val user_frag = ref (SSFRAG {dprocs = [], ac = [], rewrs = [],
                             congs = [], filter = NONE,
                             name = SOME "permsimps", convs = []})

val user_weakenings = ref ([] : thm list)
fun add_rwts ths =
    user_frag := merge_ss [!user_frag, rewrites ths]
fun add_weakenings ths = user_weakenings := !user_weakenings @ ths

fun congfrag ths = SSFRAG {dprocs = [], ac = [], rewrs = [],
                           congs = ths, filter = NONE,
                           name = NONE, convs = []}

fun add_congs ths =
    user_frag := merge_ss [!user_frag, congfrag ths]

val permeq_sym' = prove(``x == y <=> y == x``, METIS_TAC [permeq_sym])

fun permify ss = simpLib.add_relsimp
               {trans = permeq_trans,
                refl = GEN_ALL permeq_refl,
                weakenings = Sus_eq_perms :: pmact_permeq ::
                             !user_weakenings,
                subsets = [],
                rewrs = [SELECT_permeq_REFL, permof_inverse,
                         permof_inverse_append,
                         CONV_RULE (LAND_CONV (ONCE_REWRITE_CONV [permeq_sym']))
                                   SELECT_permeq_REFL]} ss ++
           congfrag [permof_REVERSE_monotone,
                     app_permeq_monotone
                         |>SPEC_ALL
                         |>REWRITE_RULE [GSYM AND_IMP_INTRO]] ++
           !user_frag

val psrw_ss = permify o srw_ss

open LoadableThyData ThmSetData

val {export=export_permrwt,...} = new_exporter "permrwts" (K add_rwts)
val {export=export_permcong,...} = new_exporter "permcongs" (K add_congs)
val {export=export_permweakening,...} =
   new_exporter "permweakenings" (K add_weakenings)

end (* struct *)
