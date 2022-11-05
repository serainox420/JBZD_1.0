.class public Lcom/mopub/nativeads/ViewBinder;
.super Ljava/lang/Object;
.source "ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/ViewBinder$1;,
        Lcom/mopub/nativeads/ViewBinder$Builder;
    }
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->a(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->a:I

    .line 90
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->b(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->b:I

    .line 91
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->c(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->c:I

    .line 92
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->d(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->d:I

    .line 93
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->e(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->e:I

    .line 94
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->f(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->f:I

    .line 95
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->g(Lcom/mopub/nativeads/ViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/ViewBinder;->g:I

    .line 96
    invoke-static {p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->h(Lcom/mopub/nativeads/ViewBinder$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/ViewBinder;->h:Ljava/util/Map;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/ViewBinder$Builder;Lcom/mopub/nativeads/ViewBinder$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/ViewBinder;-><init>(Lcom/mopub/nativeads/ViewBinder$Builder;)V

    return-void
.end method
