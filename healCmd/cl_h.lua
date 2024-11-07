RegisterCommand('h', function(source, args, rawCommand)

if lib.progressBar({
    duration = 3000,
    label = 'Regenerating health & armour ...',
    allowRagdoll = false,
    allowSwimming = false,
    allowCuffed = false,
    allowFalling = false,
    canCancel = true,
    anim = {
        dict = 'mp_safehouseshower@male@',
        clip = 'male_shower_idle_a'
    },
    disable = {
        move = false,
        car = false,
        combat = false
    }
}) 
then
    SetEntityHealth(cache.ped, GetEntityMaxHealth(cache.ped))
    SetPedArmour(cache.ped, GetPlayerMaxArmour(cache.playerId))
    end
end, false)