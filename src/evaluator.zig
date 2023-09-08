const std = @import("std");
const print = @import("std").debug.print;
const ast = @import("ast");

pub fn evaluator(program: ast.Program) void {
    const current_node = program;
    const result = null;

    while (current_node != null) {
        result = eval_statement(current_node);
        current_node = current_node.next;
    }
}

fn optimize(program: ast.Program) ast.Program {
    return program;
}
