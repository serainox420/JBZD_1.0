.class final Lcom/revmob/ads/interstitial/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a;->b(Lcom/revmob/ads/interstitial/a;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/revmob/ads/interstitial/a;->a(Lcom/revmob/ads/interstitial/a;F)F

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a;->i(Lcom/revmob/ads/interstitial/a;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v3, v3, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->t()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    const-string v1, "mute"

    invoke-static {v0, v1}, Lcom/revmob/ads/interstitial/a;->a(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v1}, Lcom/revmob/ads/interstitial/a;->b(Lcom/revmob/ads/interstitial/a;)F

    move-result v1

    iget-object v2, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v2}, Lcom/revmob/ads/interstitial/a;->b(Lcom/revmob/ads/interstitial/a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v1, v1, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v1}, Lcom/revmob/FullscreenActivity;->getApplicationContext()Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/revmob/FullscreenActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RevMobVideoVolume"

    iget-object v2, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v2}, Lcom/revmob/ads/interstitial/a;->b(Lcom/revmob/ads/interstitial/a;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v0, v1}, Lcom/revmob/ads/interstitial/a;->a(Lcom/revmob/ads/interstitial/a;F)F

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a;->i(Lcom/revmob/ads/interstitial/a;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v3, v3, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->s()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/e;->a:Lcom/revmob/ads/interstitial/a;

    const-string v1, "unmute"

    invoke-static {v0, v1}, Lcom/revmob/ads/interstitial/a;->a(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V

    goto :goto_0
.end method
