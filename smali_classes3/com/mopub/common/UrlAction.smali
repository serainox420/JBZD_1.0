.class public abstract enum Lcom/mopub/common/UrlAction;
.super Ljava/lang/Enum;
.source "UrlAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/UrlAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

.field public static final enum FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

.field public static final enum HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

.field public static final enum HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

.field public static final enum HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

.field public static final enum IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

.field public static final enum NOOP:Lcom/mopub/common/UrlAction;

.field public static final enum OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

.field public static final enum OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

.field public static final enum OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

.field private static final synthetic b:[Lcom/mopub/common/UrlAction;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    new-instance v0, Lcom/mopub/common/UrlAction$1;

    const-string v1, "HANDLE_MOPUB_SCHEME"

    invoke-direct {v0, v1, v4, v4}, Lcom/mopub/common/UrlAction$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    .line 64
    new-instance v0, Lcom/mopub/common/UrlAction$3;

    const-string v1, "IGNORE_ABOUT_SCHEME"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/common/UrlAction$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    .line 80
    new-instance v0, Lcom/mopub/common/UrlAction$4;

    const-string v1, "HANDLE_PHONE_SCHEME"

    invoke-direct {v0, v1, v5, v3}, Lcom/mopub/common/UrlAction$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    .line 102
    new-instance v0, Lcom/mopub/common/UrlAction$5;

    const-string v1, "OPEN_NATIVE_BROWSER"

    invoke-direct {v0, v1, v6, v3}, Lcom/mopub/common/UrlAction$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    .line 124
    new-instance v0, Lcom/mopub/common/UrlAction$6;

    const-string v1, "OPEN_APP_MARKET"

    invoke-direct {v0, v1, v7, v3}, Lcom/mopub/common/UrlAction$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    .line 147
    new-instance v0, Lcom/mopub/common/UrlAction$7;

    const-string v1, "OPEN_IN_APP_BROWSER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/UrlAction$7;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    .line 170
    new-instance v0, Lcom/mopub/common/UrlAction$8;

    const-string v1, "HANDLE_SHARE_TWEET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/UrlAction$8;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    .line 199
    new-instance v0, Lcom/mopub/common/UrlAction$9;

    const-string v1, "FOLLOW_DEEP_LINK_WITH_FALLBACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/UrlAction$9;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    .line 273
    new-instance v0, Lcom/mopub/common/UrlAction$10;

    const-string v1, "FOLLOW_DEEP_LINK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/UrlAction$10;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    .line 301
    new-instance v0, Lcom/mopub/common/UrlAction$2;

    const-string v1, "NOOP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/mopub/common/UrlAction$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mopub/common/UrlAction;

    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/common/UrlAction;->b:[Lcom/mopub/common/UrlAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 334
    iput-boolean p3, p0, Lcom/mopub/common/UrlAction;->a:Z

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/UrlAction;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/mopub/common/UrlAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/UrlAction;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/UrlAction;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mopub/common/UrlAction;->b:[Lcom/mopub/common/UrlAction;

    invoke-virtual {v0}, [Lcom/mopub/common/UrlAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/UrlAction;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation
.end method

.method public handleUrl(Lcom/mopub/common/UrlHandler;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad event URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lcom/mopub/common/UrlAction;->a:Z

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 324
    new-instance v0, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v1, "Attempted to handle action without user interaction."

    invoke-direct {v0, v1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/mopub/common/UrlAction;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public abstract shouldTryHandlingUrl(Landroid/net/Uri;)Z
.end method
