.class Lcom/mopub/mobileads/VastVideoViewController$4;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoViewController;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->a(Lcom/mopub/mobileads/VastVideoViewController;Landroid/view/View;)Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$4;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->e(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 194
    return-void
.end method
