.class public Lcom/mopub/nativeads/NativeClickHandler;
.super Ljava/lang/Object;
.source "NativeClickHandler.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeClickHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mopub/nativeads/NativeClickHandler;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Landroid/view/ViewGroup;

    .line 74
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/mopub/nativeads/NativeClickHandler;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/NativeClickHandler;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeClickHandler;->c:Z

    return p1
.end method


# virtual methods
.method a(Ljava/lang/String;Landroid/view/View;Lcom/mopub/nativeads/i;)V
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 111
    const-string v0, "Cannot open a null click destination url"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeClickHandler;->c:Z

    if-nez v0, :cond_0

    .line 120
    iput-boolean v5, p0, Lcom/mopub/nativeads/NativeClickHandler;->c:Z

    .line 122
    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p3, p2}, Lcom/mopub/nativeads/i;->a(Landroid/view/View;)Z

    .line 126
    :cond_2
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/mopub/nativeads/NativeClickHandler;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/mopub/nativeads/NativeClickHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 130
    :cond_3
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativeads/NativeClickHandler$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/mopub/nativeads/NativeClickHandler$2;-><init>(Lcom/mopub/nativeads/NativeClickHandler;Landroid/view/View;Lcom/mopub/nativeads/i;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/NativeClickHandler;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearOnClickListener(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    const-string v0, "Cannot clear click listener from a null view"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeClickHandler;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/mopub/nativeads/i;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeClickHandler;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/nativeads/NativeClickHandler;->a(Ljava/lang/String;Landroid/view/View;Lcom/mopub/nativeads/i;)V

    .line 103
    return-void
.end method

.method public setOnClickListener(Landroid/view/View;Lcom/mopub/nativeads/ClickInterface;)V
    .locals 1

    .prologue
    .line 45
    const-string v0, "Cannot set click listener on a null view"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "Cannot set click listener with a null ClickInterface"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/mopub/nativeads/NativeClickHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/NativeClickHandler$1;-><init>(Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/ClickInterface;)V

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeClickHandler;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
