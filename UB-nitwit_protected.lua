CreateThread(function()
    local resources = GetNumResources()
    for i = 0, resources - 1 do
        local resource = GetResourceByFindIndex(i)
        local files = GetNumResourceMetadata(resource, 'client_script')
        for j = 0, files, 1 do
            local x = GetResourceMetadata(resource, 'client_script', j)
            if x ~= nil then
                if string.find(x, "obfuscated") then
                    print(resource)
                end
            end
        end
    end
end)
