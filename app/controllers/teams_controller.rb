class TeamsController < ApplicationController
  
  def show
    @team = Team.includes(:hackers => :commits).find_by_permalink(params[:id])
    @commits = Array.new
    @team.hackers.each do |hacker|
      hacker.commits.each do |commit|
        @commits.push(commit)
      end
    end
    @commits.sort! { |a,b| b.created_at <=> a.created_at} unless @commits.nil?
  end
end
