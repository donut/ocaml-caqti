(* Copyright (C) 2014--2017  Petter A. Urkedal <paurkedal@gmail.com>
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version, with the OCaml static compilation exception.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library.  If not, see <http://www.gnu.org/licenses/>.
 *)

(** (internal) Resource pool. *)

module Make_v1 (System : Caqti_system_sig.V1) :
  Caqti_pool_sig.V1 with type 'a io := 'a System.io

module Make_v2 (System : Caqti_system_sig.V2) :
  Caqti_pool_sig.V2 with type 'a io := 'a System.io

module Make = Make_v1 [@@ocaml.deprecated "Renamed to Make_v1."]
