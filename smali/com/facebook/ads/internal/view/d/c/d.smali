.class public final enum Lcom/facebook/ads/internal/view/d/c/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/view/d/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/view/d/c/d;

.field public static final enum b:Lcom/facebook/ads/internal/view/d/c/d;

.field public static final enum c:Lcom/facebook/ads/internal/view/d/c/d;

.field public static final enum d:Lcom/facebook/ads/internal/view/d/c/d;

.field public static final enum e:Lcom/facebook/ads/internal/view/d/c/d;

.field public static final enum f:Lcom/facebook/ads/internal/view/d/c/d;

.field public static final enum g:Lcom/facebook/ads/internal/view/d/c/d;

.field public static final enum h:Lcom/facebook/ads/internal/view/d/c/d;

.field private static final synthetic i:[Lcom/facebook/ads/internal/view/d/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->b:Lcom/facebook/ads/internal/view/d/c/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->c:Lcom/facebook/ads/internal/view/d/c/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "BUFFERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->f:Lcom/facebook/ads/internal/view/d/c/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "PLAYBACK_COMPLETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/d;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/d/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->h:Lcom/facebook/ads/internal/view/d/c/d;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->b:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->c:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/internal/view/d/c/d;->f:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/internal/view/d/c/d;->h:Lcom/facebook/ads/internal/view/d/c/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/d;->i:[Lcom/facebook/ads/internal/view/d/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/view/d/c/d;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/d/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/d/c/d;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/view/d/c/d;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->i:[Lcom/facebook/ads/internal/view/d/c/d;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/view/d/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/view/d/c/d;

    return-object v0
.end method
