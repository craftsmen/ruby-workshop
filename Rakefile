namespace :workshop do

  desc 'Initialize the workshop environment'
  task :init do
    system 'bundle install'
    system 'for remote in `git branch -r | grep -v master `; do git checkout --track $remote ; git checkout master ; done'
  end

  desc 'Move to next step'
  task :next do
    init_git
    step = next_step
    if step
      move_to step
    else
      puts "No more step ! You are now a Ruby killer."
    end
  end

  desc 'Move to previous step'
  task :prev do
    init_git
    step = prev_step
    if step
      move_to step
    else
      puts "You are where everything starts."
    end
  end

  desc 'Move to a specific step'
  task :step, :step do |t, args|
    init_git
    step = "step-#{args[:step]}"
    raise "Step #{step} is not valid" if !@git.branches[step]
    move_to(@git.branches[step])
  end

  def init_git
    require 'git'
    @git = Git.open('.')
  end

  def move_to(branch)
    puts "Moving to #{branch}"
    @git.reset
    branch.checkout
  end

  def next_step
    @git.branches["step-#{current_branch + 1}"] || nil
  end

  def prev_step
    prev = current_branch == 1 ? 'master' : "step-#{current_branch - 1}"
    @git.branches[prev] || nil
  end

  def current_branch
    @git.current_branch.to_s.gsub('master','0',).gsub('step-','').to_i
  end
end
