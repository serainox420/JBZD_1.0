.class Lcom/mopub/mobileads/g;
.super Ljava/lang/Object;
.source "VastIconConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/Integer;

.field private final e:Lcom/mopub/mobileads/l;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/l;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/mopub/mobileads/l;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    iput p1, p0, Lcom/mopub/mobileads/g;->a:I

    .line 51
    iput p2, p0, Lcom/mopub/mobileads/g;->b:I

    .line 52
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/mopub/mobileads/g;->c:I

    .line 53
    iput-object p4, p0, Lcom/mopub/mobileads/g;->d:Ljava/lang/Integer;

    .line 54
    iput-object p5, p0, Lcom/mopub/mobileads/g;->e:Lcom/mopub/mobileads/l;

    .line 55
    iput-object p6, p0, Lcom/mopub/mobileads/g;->f:Ljava/util/List;

    .line 56
    iput-object p7, p0, Lcom/mopub/mobileads/g;->g:Ljava/lang/String;

    .line 57
    iput-object p8, p0, Lcom/mopub/mobileads/g;->h:Ljava/util/List;

    .line 58
    return-void

    .line 52
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/mopub/mobileads/g;->a:I

    return v0
.end method

.method a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/g;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 141
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/g;->e:Lcom/mopub/mobileads/l;

    iget-object v1, p0, Lcom/mopub/mobileads/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/mopub/mobileads/l;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v1}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v2, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mopub/common/UrlAction;

    const/4 v4, 0x0

    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v1

    new-instance v2, Lcom/mopub/mobileads/g$1;

    invoke-direct {v2, p0, p3, p1}, Lcom/mopub/mobileads/g$1;-><init>(Lcom/mopub/mobileads/g;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/mopub/mobileads/g;->b:I

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mopub/mobileads/g;->c:I

    return v0
.end method

.method d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/g;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method e()Lcom/mopub/mobileads/l;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/g;->e:Lcom/mopub/mobileads/l;

    return-object v0
.end method

.method f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/g;->f:Ljava/util/List;

    return-object v0
.end method
