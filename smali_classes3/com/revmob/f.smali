.class final Lcom/revmob/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/revmob/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/revmob/FullscreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/f;->a:Lcom/revmob/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/f;->a:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/f;->a:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    :cond_0
    iget-object v0, p0, Lcom/revmob/f;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->finish()V

    return-void
.end method
