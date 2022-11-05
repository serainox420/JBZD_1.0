.class Lcom/mopub/common/event/EventSampler$1;
.super Ljava/util/LinkedHashMap;
.source "EventSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/event/EventSampler;-><init>(Ljava/util/Random;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/event/EventSampler;


# direct methods
.method constructor <init>(Lcom/mopub/common/event/EventSampler;IFZ)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mopub/common/event/EventSampler$1;->a:Lcom/mopub/common/event/EventSampler;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/mopub/common/event/EventSampler$1;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
