function claude
    # Start LiteLLM on port 4000 only if it is NOT already running 
    if not pgrep -x "litellm" > /dev/null
        litellm --config ~/.config/litellm/config.yaml --port 4000 > /dev/null 2>&1 &
    end
    
    # Launch Claude
    command claude $argv

    if not pgrep -x claude > /dev/null
        pkill "litellm" > /dev/null
    end
end