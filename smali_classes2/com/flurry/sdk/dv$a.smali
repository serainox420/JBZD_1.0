.class final enum Lcom/flurry/sdk/dv$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/dv$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/dv$a;

.field public static final enum b:Lcom/flurry/sdk/dv$a;

.field public static final enum c:Lcom/flurry/sdk/dv$a;

.field public static final enum d:Lcom/flurry/sdk/dv$a;

.field public static final enum e:Lcom/flurry/sdk/dv$a;

.field public static final enum f:Lcom/flurry/sdk/dv$a;

.field public static final enum g:Lcom/flurry/sdk/dv$a;

.field public static final enum h:Lcom/flurry/sdk/dv$a;

.field private static final synthetic i:[Lcom/flurry/sdk/dv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    .line 59
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->b:Lcom/flurry/sdk/dv$a;

    .line 60
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "CSRTB_AUCTION_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->c:Lcom/flurry/sdk/dv$a;

    .line 61
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "CSRTB_AWAIT_AUCTION"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->d:Lcom/flurry/sdk/dv$a;

    .line 62
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "SELECT"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    .line 63
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "PREPARE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->f:Lcom/flurry/sdk/dv$a;

    .line 64
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "FILLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->g:Lcom/flurry/sdk/dv$a;

    .line 65
    new-instance v0, Lcom/flurry/sdk/dv$a;

    const-string v1, "PRERENDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/dv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/dv$a;->h:Lcom/flurry/sdk/dv$a;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/flurry/sdk/dv$a;

    sget-object v1, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/dv$a;->b:Lcom/flurry/sdk/dv$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/dv$a;->c:Lcom/flurry/sdk/dv$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/dv$a;->d:Lcom/flurry/sdk/dv$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/dv$a;->f:Lcom/flurry/sdk/dv$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/dv$a;->g:Lcom/flurry/sdk/dv$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/sdk/dv$a;->h:Lcom/flurry/sdk/dv$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/dv$a;->i:[Lcom/flurry/sdk/dv$a;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/dv$a;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/flurry/sdk/dv$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dv$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/dv$a;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/flurry/sdk/dv$a;->i:[Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/dv$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/dv$a;

    return-object v0
.end method
