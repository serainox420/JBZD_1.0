.class final enum Lcom/adcolony/sdk/bi$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/bi$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adcolony/sdk/bi$f;

.field public static final enum b:Lcom/adcolony/sdk/bi$f;

.field public static final enum c:Lcom/adcolony/sdk/bi$f;

.field public static final enum d:Lcom/adcolony/sdk/bi$f;

.field public static final enum e:Lcom/adcolony/sdk/bi$f;

.field public static final enum f:Lcom/adcolony/sdk/bi$f;

.field private static final synthetic g:[Lcom/adcolony/sdk/bi$f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/adcolony/sdk/bi$f;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/bi$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$f;->a:Lcom/adcolony/sdk/bi$f;

    .line 96
    new-instance v0, Lcom/adcolony/sdk/bi$f;

    const-string v1, "SPLASH_LOADING"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/bi$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$f;->b:Lcom/adcolony/sdk/bi$f;

    .line 97
    new-instance v0, Lcom/adcolony/sdk/bi$f;

    const-string v1, "SPLASH_LOADED"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/bi$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$f;->c:Lcom/adcolony/sdk/bi$f;

    .line 98
    new-instance v0, Lcom/adcolony/sdk/bi$f;

    const-string v1, "OVERLAY_LOADING"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/bi$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$f;->d:Lcom/adcolony/sdk/bi$f;

    .line 99
    new-instance v0, Lcom/adcolony/sdk/bi$f;

    const-string v1, "OVERLAY_LOADED"

    invoke-direct {v0, v1, v7}, Lcom/adcolony/sdk/bi$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$f;->e:Lcom/adcolony/sdk/bi$f;

    .line 100
    new-instance v0, Lcom/adcolony/sdk/bi$f;

    const-string v1, "OVERLAY_LOAD_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/bi$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/bi$f;->f:Lcom/adcolony/sdk/bi$f;

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adcolony/sdk/bi$f;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->a:Lcom/adcolony/sdk/bi$f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/bi$f;->b:Lcom/adcolony/sdk/bi$f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/bi$f;->c:Lcom/adcolony/sdk/bi$f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/bi$f;->d:Lcom/adcolony/sdk/bi$f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adcolony/sdk/bi$f;->e:Lcom/adcolony/sdk/bi$f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adcolony/sdk/bi$f;->f:Lcom/adcolony/sdk/bi$f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adcolony/sdk/bi$f;->g:[Lcom/adcolony/sdk/bi$f;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/bi$f;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/adcolony/sdk/bi$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bi$f;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/bi$f;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/adcolony/sdk/bi$f;->g:[Lcom/adcolony/sdk/bi$f;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/bi$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/bi$f;

    return-object v0
.end method
