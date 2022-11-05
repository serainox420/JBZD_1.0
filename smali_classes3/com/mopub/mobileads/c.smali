.class Lcom/mopub/mobileads/c;
.super Ljava/lang/Object;
.source "RewardedVideoData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mopub/mobileads/c$a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/c;->a:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/c;->b:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/c;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/c;->d:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/c;->e:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/c;->f:Ljava/util/Set;

    .line 49
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;)",
            "Lcom/mopub/common/MoPubReward;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    return-object v0
.end method

.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    if-nez p2, :cond_2

    .line 79
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/c$a;

    iget-object v1, v1, Lcom/mopub/mobileads/c$a;->a:Ljava/lang/Class;

    .line 82
    if-ne p1, v1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 89
    :goto_1
    return-object v0

    .line 88
    :cond_2
    new-instance v0, Lcom/mopub/mobileads/c$a;

    invoke-direct {v0, p1, p2}, Lcom/mopub/mobileads/c$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/mopub/mobileads/c;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mopub/mobileads/c;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method a(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v2, Lcom/mopub/mobileads/c$a;

    invoke-direct {v2, p1, p2}, Lcom/mopub/mobileads/c$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 161
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/c$a;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/c$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/c;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 180
    if-nez v0, :cond_2

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/mopub/mobileads/c;->e:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_2
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method a(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/c;->f:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p1}, Lcom/mopub/mobileads/c;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    if-ltz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/mopub/mobileads/c;->b:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mopub/mobileads/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mopub/mobileads/c;->g:Ljava/lang/String;

    .line 189
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mopub/mobileads/c;->h:Ljava/lang/String;

    .line 198
    return-void
.end method
