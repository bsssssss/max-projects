---@meta modalys
-- Type definitions for IRCAM Modalys lua API

---------------------------------------------------------------------------------
-- GENERAL
---------------------------------------------------------------------------------

---@class modalys
local modalys = {}

---@class ModalysObject
---@class ModalysAccess
---@class ModalysConnection
---@class ModalysController

---@class ModalysPointInput
---@class ModalysPointOutput

---------------------------------------------------------------------------------
-- OBJECTS
---------------------------------------------------------------------------------

---@alias ModalysObjectKind
---| "harmonic-oscillator"
---| "mono-two-mass"
---| "bi-two-mass"
---
---| "mono-string"
---| "bi-string"
---
---| "open-open-tube"
---| "closed-open-tube"
---| "closed-closed-tube"
---| "jet"
---
---| "circ-membrane"
---| "rect-membrane"
---
---| "rect-plate"
---| "clamped-circ-plate"
---| "free-circ-plate"
---| "rect-free-bar"
---
---| "cello-bridge"
---| "violin-bridge"
---
---| "single-point"
---| "multiple-points"
---| "radiator"

---@class ModalysObjectParams
---
--- Kind of object. Required
---@field kind ModalysObjectKind
---
--- Name of the object for future reference.
---@field name? string
---
--- The mass of the small mass in kg.
---
--- Used by:
---     - `harmonic-oscillator`
---@field mass? number
---
--- The stiffness of the spring in the normal direction.
---
--- Used by:
---     - `harmonic-oscillator`
---     - `mono-two-mass`
---     - `bi-two-mass`
---@field stiffness? number
---
--- Frequency loss.
---
--- Used by:
---     - `harmonic-oscillator`
---     - `mono-two-mass`
---     - `mono-string`
---     - `bi-string`
---@field freqloss? number
---
--- Constant loss.
---
--- Used by:
---     - `harmonic-oscillator`
---     - `mono-two-mass`
---     - `mono-string`
---     - `bi-string`
---@field constloss? number The usual constant loss parameter.
---
--- The mass of the small mass in kg.
---
--- Used by:
---     - `mono-two-mass`
---     - `bi-two-mass`
---@field smallmass? number
---
--- The mass of the large mass in kg.
---
--- Used by:
---     - `mono-two-mass`
---     - `bi-two-mass`
---@field largemass? number
---
--- The stiffness of the spring in the 'trans0 (horizontal) direction.
---
--- Used by:
---     - `bi-two-mass`
---@field stiffness1? number
---
--- The stiffness of the spring in the 'trans1 (vertical) direction.
---
--- Used by:
---     - `bi-two-mass`
---@field stiffness2? number
---
--- The usual frequency loss parameter, 
--- but this loss only affects the trans0 (horizontal) direction of vibration.
---
--- Used by:
---     - `bi-two-mass`
---@field freqloss1? number
---
--- The usual frequency loss parameter,
--- but this loss only affects the trans1 (vertical) direction of vibration.
---
--- Used by:
---     - `bi-two-mass`
---@field freqloss2? number
---
--- The usual constant loss parameter,
--- but this loss only affects the trans0 (horizontal) direction of vibration.
---
--- Used by:
---     - `bi-two-mass`
---@field constloss1? number
---
--- The usual constant loss parameter,
--- but this loss only affects the trans1 (vertical) direction of vibration.
---
--- Used by:
---     - `bi-two-mass`
---@field constloss2? number
---
--- This value determines the number of modes of vibration calculated in the
--- simulation of the object. As the number of modes is increased, higher 
--- partials are added to the resultant sound. Thus if ten modes are used, 
--- the lowest ten frequencies produced by the vibration of the object are 
--- computed. Maximum detail is obtained when the number of modes is high 
--- enough so that all frequencies below the Nyquist frequency are accounted
--- for. Most objects will have have a user-definable number of modes, but some
--- objects (such as the bi-two-mass) have a fixed number of modes, in which 
--- case this option is not settable.
---
--- Used by: 
---     - `mono-string`
---     - `bi-string`
---     - `open-open-tube`
---@field modes? integer
---
--- Length in meters.
---
--- Used by:
---     - `mono-string`
---     - `bi-string`
---     - `open-open-tube`
---@field length? number
---
--- Tension in Newtons.
---
--- Used by:
---     - `mono-string`
---     - `bi-string`
---@field tension? number
---
--- Density in kg/m3. See chart of material properties for appropriate values.
---
--- Used by:
---     - `mono-string`
---     - `bi-string`
---@field density? number
---
--- Radius in meters.
---
--- Used by:
---     - `mono-string`
---     - `bi-string`
---@field radius? number
---
--- Young's modulus, in N/m2. See chart of material properties for appropriate values.
---
--- Used by:
---     - `mono-string`
---     - `bi-string`
---@field young? number

---@param params ModalysObjectParams
---@return ModalysObject
function modalys.create_object(params) end
modalys.make_object = modalys.create_object
create_object = modalys.create_object
make_object = modalys.create_object

---------------------------------------------------------------------------------
-- POINT INPUTS
---------------------------------------------------------------------------------

---@class ModalysPointInputParams
---@field name? string
---@field gain? number
--- The input channel (1 based)
---@field channel? integer

---@param p ModalysPointInputParams
---@return ModalysPointInput
function modalys.create_point_input(p) end
modalys.create_point_input = modalys.create_point_input
create_point_input = modalys.create_point_input
make_point_input = modalys.create_point_input

---------------------------------------------------------------------------------
-- POINT OUTPUTS
---------------------------------------------------------------------------------

---@class ModalysPointOutputParams
---@field where ModalysObject | ModalysAccess | ModalysController
---@field name? string
---@field gain? number
--- The output channel (1 based)
---@field channel? integer
---@field modes? nil | integer | {}

---@param p ModalysPointOutputParams
---@return ModalysPointOutput
function modalys.create_point_output(p) end
modalys.make_point_output = modalys.create_point_output
create_point_output = modalys.create_point_output
make_point_output = modalys.create_point_output

---------------------------------------------------------------------------------
-- ACCESSES
---------------------------------------------------------------------------------

---@class ModalysAccessParams
---@field where ModalysObject
---@field name? string
---@field kind string | nil

---@param p ModalysAccessParams
---@return ModalysAccess
function modalys.create_access(p) end
modalys.make_access = modalys.create_access
create_access = modalys.create_access
make_access = modalys.create_access

---------------------------------------------------------------------------------
-- CONNECTIONS
---------------------------------------------------------------------------------

---@class ModalysConnectionParams
---@field where ModalysAccess
---@field kind string
---@field name string

---@param p ModalysConnectionParams
---@return ModalysConnection
function modalys.create_connection(p) end
modalys.make_connection = modalys.create_connection
create_connection = modalys.create_connection
make_connection = modalys.create_connection
