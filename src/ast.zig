const Location = struct {
    start: number,
    end: number,
    filename: string,
};

const Program = struct {
    expression: Term,
    location: Location,
};

const If = struct {
    kind: "If",
    condition: Term,
    then: Term,
    otherwise: Term,
    location: Location,
};

const Let = struct {
    kind: "Let",
    name: Parameter,
    value: Term,
    next: Term,
    location: Location,
};

const Integer = struct {
    kind: "Int",
    value: number,
    location: Location,
};

const BinaryOperator = enum {
    Add: "Add",
    Sub: "Sub",
    Mul: "Mul",
    Div: "Div",
    Rem: "Rem",
    Eq: "Eq",
    Neq: "Neq",
    Lt: "Lt",
    Gt: "Gt",
    Lte: "Lte",
    Gte: "Gte",
    And: "And",
    Or: "Or",
};

const Binary = struct {
    kind: "Binary",
    lhs: Term,
    op: BinaryOperator,
    rhs: Term,
    location: Location,
};

const String = struct {
    kind: "Str",
    value: string,
    location: Location,
};

const Boolean = struct {
    kind: "Boolean",
    value: boolean,
    location: Location,
};

const Integer = struct {
    kind: "Int",
    value: number,
    location: Location,
};

const Call = struct {
    kind: "Call",
    callee: Term,
    arguments: []Term,
    location: Location,
};

const Function = struct {
    kind: "Function",
    parameters: []Parameter,
    value: Term,
    location: Location,
};

const Parameter = struct {
    text: string,
    location: Location,
};

const Var = struct {
    kind: "Var",
    text: string,
    location: Location,
};

const Tuple = struct {
    kind: "Tuple",
    first: Term,
    second: Term,
    location: Location,
};

const First = struct {
    kind: "First",
    value: Term,
    location: Location,
};

const Print = struct {
    kind: "Print",
    value: Term,
    location: Location,
};

const Second = struct {
    kind: "Second",
    value: Term,
    location: Location,
};

const Term = union {
    If,
    Let,
    Integer,
    String,
    Boolean,
    Binary,
    Call,
    Function,
    Tuple,
    First,
    Second,
    Var,
    Print,
};
