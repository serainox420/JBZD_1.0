.class public final enum Lcom/flurry/sdk/da;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/da;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/da;

.field public static final enum b:Lcom/flurry/sdk/da;

.field public static final enum c:Lcom/flurry/sdk/da;

.field private static final synthetic d:[Lcom/flurry/sdk/da;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/flurry/sdk/da;

    const-string v1, "ADSPACE"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/da;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/da;->a:Lcom/flurry/sdk/da;

    new-instance v0, Lcom/flurry/sdk/da;

    const-string v1, "PUBLISHER"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/da;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/da;

    new-instance v0, Lcom/flurry/sdk/da;

    const-string v1, "STREAM"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/da;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/da;->c:Lcom/flurry/sdk/da;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/da;

    sget-object v1, Lcom/flurry/sdk/da;->a:Lcom/flurry/sdk/da;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/da;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/da;->c:Lcom/flurry/sdk/da;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/da;->d:[Lcom/flurry/sdk/da;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/da;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/flurry/sdk/da;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/da;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/da;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/flurry/sdk/da;->d:[Lcom/flurry/sdk/da;

    invoke-virtual {v0}, [Lcom/flurry/sdk/da;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/da;

    return-object v0
.end method
