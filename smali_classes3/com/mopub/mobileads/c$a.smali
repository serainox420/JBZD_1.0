.class Lcom/mopub/mobileads/c$a;
.super Landroid/util/Pair;
.source "RewardedVideoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iput-object p1, p0, Lcom/mopub/mobileads/c$a;->a:Ljava/lang/Class;

    .line 230
    iput-object p2, p0, Lcom/mopub/mobileads/c$a;->b:Ljava/lang/String;

    .line 231
    return-void
.end method
