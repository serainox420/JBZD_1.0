.class public final enum Lcom/facebook/ads/internal/j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/j;

.field public static final enum b:Lcom/facebook/ads/internal/j;

.field public static final enum c:Lcom/facebook/ads/internal/j;

.field public static final enum d:Lcom/facebook/ads/internal/j;

.field public static final enum e:Lcom/facebook/ads/internal/j;

.field public static final enum f:Lcom/facebook/ads/internal/j;

.field public static final enum g:Lcom/facebook/ads/internal/j;

.field public static final enum h:Lcom/facebook/ads/internal/j;

.field public static final enum i:Lcom/facebook/ads/internal/j;

.field private static final synthetic k:[Lcom/facebook/ads/internal/j;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARDED_VIDEO_COMPLETE"

    const-string v2, "com.facebook.ads.rewarded_video.completed"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->a:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARDED_VIDEO_COMPLETE_WITHOUT_REWARD"

    const-string v2, "com.facebook.ads.rewarded_video.completed.without.reward"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->b:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARDED_VIDEO_END_ACTIVITY"

    const-string v2, "com.facebook.ads.rewarded_video.error"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->c:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARDED_VIDEO_ERROR"

    const-string v2, "com.facebook.ads.rewarded_video.error"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->d:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARDED_VIDEO_AD_CLICK"

    const-string v2, "com.facebook.ads.rewarded_video.ad_click"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->e:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARDED_VIDEO_IMPRESSION"

    const/4 v2, 0x5

    const-string v3, "com.facebook.ads.rewarded_video.ad_impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->f:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARDED_VIDEO_CLOSED"

    const/4 v2, 0x6

    const-string v3, "com.facebook.ads.rewarded_video.closed"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->g:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARD_SERVER_SUCCESS"

    const/4 v2, 0x7

    const-string v3, "com.facebook.ads.rewarded_video.server_reward_success"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->h:Lcom/facebook/ads/internal/j;

    new-instance v0, Lcom/facebook/ads/internal/j;

    const-string v1, "REWARD_SERVER_FAILED"

    const/16 v2, 0x8

    const-string v3, "com.facebook.ads.rewarded_video.server_reward_failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/j;->i:Lcom/facebook/ads/internal/j;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/ads/internal/j;

    sget-object v1, Lcom/facebook/ads/internal/j;->a:Lcom/facebook/ads/internal/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/j;->b:Lcom/facebook/ads/internal/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/j;->c:Lcom/facebook/ads/internal/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/j;->d:Lcom/facebook/ads/internal/j;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/internal/j;->e:Lcom/facebook/ads/internal/j;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/internal/j;->f:Lcom/facebook/ads/internal/j;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/internal/j;->g:Lcom/facebook/ads/internal/j;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/internal/j;->h:Lcom/facebook/ads/internal/j;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ads/internal/j;->i:Lcom/facebook/ads/internal/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/j;->k:[Lcom/facebook/ads/internal/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/internal/j;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/j;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/j;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/j;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/j;->k:[Lcom/facebook/ads/internal/j;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/j;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
