.class public final enum Lio/realm/Case;
.super Ljava/lang/Enum;
.source "Case.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/Case;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSENSITIVE:Lio/realm/Case;

.field public static final enum SENSITIVE:Lio/realm/Case;

.field private static final synthetic b:[Lio/realm/Case;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lio/realm/Case;

    const-string v1, "SENSITIVE"

    invoke-direct {v0, v1, v2, v3}, Lio/realm/Case;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    .line 29
    new-instance v0, Lio/realm/Case;

    const-string v1, "INSENSITIVE"

    invoke-direct {v0, v1, v3, v2}, Lio/realm/Case;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/Case;

    sget-object v1, Lio/realm/Case;->SENSITIVE:Lio/realm/Case;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/Case;->INSENSITIVE:Lio/realm/Case;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/Case;->b:[Lio/realm/Case;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-boolean p3, p0, Lio/realm/Case;->a:Z

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/Case;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lio/realm/Case;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/Case;

    return-object v0
.end method

.method public static values()[Lio/realm/Case;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lio/realm/Case;->b:[Lio/realm/Case;

    invoke-virtual {v0}, [Lio/realm/Case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/Case;

    return-object v0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lio/realm/Case;->a:Z

    return v0
.end method
