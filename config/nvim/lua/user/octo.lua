local octo = prequire('octo')

octo.setup({
    default_remote = {"upstream", "origin"};
    reaction_viewer_hint_icon = "";
    user_icon = " ";
    timeline_marker = "";
    timeline_indent = "2";
    right_bubble_delimiter = "";
    left_bubble_delimiter = "";
    github_hostname = "";
    snippet_context_lines = 4;
    file_panel = {
        size = 10,
        use_icons = true
    },
    mappings = {
        issue = {
            close_issue = "<space>ic",
            reopen_issue = "<space>io",
            list_issues = "<space>il",
            reload = "<C-r>",
            open_in_browser = "<C-b>",
            copy_url = "<C-y>",
            add_assignee = "<space>aa",
            remove_assignee = "<space>ad",
            create_label = "<space>lc",
            add_label = "<space>la",
            remove_label = "<space>ld",
            goto_issue = "<space>gi",
            add_comment = "<space>ca",
            delete_comment = "<space>cd",
            next_comment = "]c",
            prev_comment = "[c",
            react_hooray = "<space>rp",
            react_heart = "<space>rh",
            react_eyes = "<space>re",
            react_thumbs_up = "<space>r+",
            react_thumbs_down = "<space>r-",
            react_rocket = "<space>rr",
            react_laugh = "<space>rl",
            react_confused = "<space>rc",
        },
        pull_request = {
            checkout_pr = "<space>po",
            merge_pr = "<space>pm",
            list_commits = "<space>pc",
            list_changed_files = "<space>pf",
            show_pr_diff = "<space>pd",
            add_reviewer = "<space>va",
            remove_reviewer = "<space>vd",
            close_issue = "<space>ic",
            reopen_issue = "<space>io",
            list_issues = "<space>il",
            reload = "<C-r>",
            open_in_browser = "<C-b>",
            copy_url = "<C-y>",
            add_assignee = "<space>aa",
            remove_assignee = "<space>ad",
            create_label = "<space>lc",
            add_label = "<space>la",
            remove_label = "<space>ld",
            goto_issue = "<space>gi",
            add_comment = "<space>ca",
            delete_comment = "<space>cd",
            next_comment = "]c",
            prev_comment = "[c",
            react_hooray = "<space>rp",
            react_heart = "<space>rh",
            react_eyes = "<space>re",
            react_thumbs_up = "<space>r+",
            react_thumbs_down = "<space>r-",
            react_rocket = "<space>rr",
            react_laugh = "<space>rl",
            react_confused = "<space>rc",
        },
        review_thread = {
            goto_issue = "<space>gi",
            add_comment = "<space>ca",
            add_suggestion = "<space>sa",
            delete_comment = "<space>cd",
            next_comment = "]c",
            prev_comment = "[c",
            select_next_entry = "]q",
            select_prev_entry = "[q",
            close_review_tab = "<C-c>",
            react_hooray = "<space>rp",
            react_heart = "<space>rh",
            react_eyes = "<space>re",
            react_thumbs_up = "<space>r+",
            react_thumbs_down = "<space>r-",
            react_rocket = "<space>rr",
            react_laugh = "<space>rl",
            react_confused = "<space>rc",
        },
        submit_win = {
            approve_review = "<C-a>",
            comment_review = "<C-m>",
            request_changes = "<C-r>",
            close_review_tab = "<C-c>",
        },
        review_diff = {
            add_review_comment = "<space>ca",
            add_review_suggestion = "<space>sa",
            focus_files = "<leader>e",
            toggle_files = "<leader>b",
            next_thread = "]t",
            prev_thread = "[t",
            select_next_entry = "]q",
            select_prev_entry = "[q",
            close_review_tab = "<C-c>",
            toggle_viewed = "<leader><space>",
        },
        file_panel = {
            next_entry = "j",
            prev_entry = "k",
            select_entry = "<cr>",
            refresh_files = "R",
            focus_files = "<leader>e",
            toggle_files = "<leader>b",
            select_next_entry = "]q",
            select_prev_entry = "[q",
            close_review_tab = "<C-c>",
            toggle_viewed = "<leader><space>",
        }
    }
})