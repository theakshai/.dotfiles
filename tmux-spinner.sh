for session in personal presidio nvim exec; do
  tmux has-session -t "$session" 2>/dev/null || tmux new -d -s "$session"
done

