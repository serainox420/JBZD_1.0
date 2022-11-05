.class Lcom/smaato/soma/interstitial/b$a$1;
.super Lcom/smaato/soma/l;
.source "InterstitialBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/b$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/smaato/soma/interstitial/b$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/b$a;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iput-object p2, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 274
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b$a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 275
    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-object v6

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 280
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v0}, Lcom/smaato/soma/j;->clearAnimation()V

    .line 284
    invoke-virtual {v0}, Lcom/smaato/soma/j;->clearFocus()V

    .line 285
    invoke-virtual {v0}, Lcom/smaato/soma/j;->destroyDrawingCache()V

    .line 288
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->b()Z

    .line 290
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v2, v2, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v2}, Lcom/smaato/soma/interstitial/b;->d(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    .line 292
    invoke-static {}, Lcom/smaato/soma/measurements/a;->a()Lcom/smaato/soma/measurements/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/measurements/a;->e()V

    .line 293
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->e(Lcom/smaato/soma/interstitial/b;)V

    .line 297
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v1, v1, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v1}, Lcom/smaato/soma/interstitial/b;->f(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity;->a:Ljava/lang/ref/WeakReference;

    .line 298
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    const-string v0, "rotation"

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->k()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v0, "orientation"

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->j()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->g(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    .line 306
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/interstitial/InterstitialActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/interstitial/InterstitialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->h(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->i(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:smaato_bridge.legacyExpand();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml. android.content.ActivityNotFoundException occured"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0

    .line 318
    :catch_1
    move-exception v0

    .line 319
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Exception inside Internal Browser"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_3

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->j(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->k(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto/16 :goto_0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_7

    .line 336
    :cond_4
    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v1, v1, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v1}, Lcom/smaato/soma/interstitial/b;->l(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->d()Z

    .line 339
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->m(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->n(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/interstitial/InterstitialActivity;

    if-eqz v0, :cond_5

    .line 344
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->o(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/interstitial/InterstitialActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/interstitial/InterstitialActivity;->finishActivity(I)V

    .line 346
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->p(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/interstitial/InterstitialActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity;->finish()V

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->q(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/ExpandedBannerActivity;

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->r(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->s(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->t(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    .line 355
    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->u(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "ExpandedBannerActivity being finished with handle(Values.MESSAGE_CLOSE)"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 363
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->v(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 365
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->w(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 368
    :catch_2
    move-exception v0

    .line 369
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml. ActivityNotFoundException occured"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0

    .line 373
    :catch_3
    move-exception v0

    .line 374
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Exception inside Internal Browser"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0

    .line 385
    :cond_7
    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z

    .line 390
    :try_start_2
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->x(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v0, v0, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/b;->y(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 395
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/smaato/soma/interstitial/b$a$1;->b:Lcom/smaato/soma/interstitial/b$a;

    iget-object v1, v1, Lcom/smaato/soma/interstitial/b$a;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v1}, Lcom/smaato/soma/interstitial/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 397
    :catch_4
    move-exception v0

    .line 398
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0

    .line 402
    :catch_5
    move-exception v0

    .line 403
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Exception inside Internal Browser"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b$a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
