.class Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;
.super Ljava/lang/Object;
.source "WebViewHoundImpl.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/WebViewHoundImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IterableViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewGroup:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;->viewGroup:Landroid/view/ViewGroup;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;->viewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;-><init>(Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$1;)V

    return-object v0
.end method
