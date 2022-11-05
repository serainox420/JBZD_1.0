.class public final enum Lcom/flurry/sdk/cu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/cu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/cu;

.field public static final enum b:Lcom/flurry/sdk/cu;

.field public static final enum c:Lcom/flurry/sdk/cu;

.field public static final enum d:Lcom/flurry/sdk/cu;

.field public static final enum e:Lcom/flurry/sdk/cu;

.field private static final synthetic f:[Lcom/flurry/sdk/cu;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/flurry/sdk/cu;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/cu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cu;->a:Lcom/flurry/sdk/cu;

    new-instance v0, Lcom/flurry/sdk/cu;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/cu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cu;->b:Lcom/flurry/sdk/cu;

    new-instance v0, Lcom/flurry/sdk/cu;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/cu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cu;->c:Lcom/flurry/sdk/cu;

    new-instance v0, Lcom/flurry/sdk/cu;

    const-string v1, "STREAM"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/cu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cu;->d:Lcom/flurry/sdk/cu;

    new-instance v0, Lcom/flurry/sdk/cu;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/cu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cu;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/cu;

    sget-object v1, Lcom/flurry/sdk/cu;->a:Lcom/flurry/sdk/cu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/cu;->b:Lcom/flurry/sdk/cu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/cu;->c:Lcom/flurry/sdk/cu;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/cu;->d:Lcom/flurry/sdk/cu;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cu;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/sdk/cu;->f:[Lcom/flurry/sdk/cu;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/cu;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/flurry/sdk/cu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cu;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/cu;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/flurry/sdk/cu;->f:[Lcom/flurry/sdk/cu;

    invoke-virtual {v0}, [Lcom/flurry/sdk/cu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/cu;

    return-object v0
.end method
