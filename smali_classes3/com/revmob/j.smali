.class final Lcom/revmob/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/revmob/RevMobAdsListener;

.field private synthetic d:I

.field private synthetic e:I

.field private synthetic f:I

.field private synthetic g:I

.field private synthetic h:I

.field private synthetic i:Lcom/revmob/RevMob;


# direct methods
.method constructor <init>(Lcom/revmob/RevMob;Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;IIIII)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/j;->i:Lcom/revmob/RevMob;

    iput-object p2, p0, Lcom/revmob/j;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/revmob/j;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/revmob/j;->c:Lcom/revmob/RevMobAdsListener;

    iput p5, p0, Lcom/revmob/j;->d:I

    iput p6, p0, Lcom/revmob/j;->e:I

    iput p7, p0, Lcom/revmob/j;->f:I

    iput p8, p0, Lcom/revmob/j;->g:I

    iput p9, p0, Lcom/revmob/j;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, -0x90

    :try_start_0
    iget-object v0, p0, Lcom/revmob/j;->i:Lcom/revmob/RevMob;

    iget-object v1, p0, Lcom/revmob/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/revmob/j;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/RevMob;->access$002(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->determineDefaultDimensions()V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/revmob/j;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/revmob/RevMob;->access$102(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/revmob/j;->d:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/revmob/j;->e:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/revmob/j;->f:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/revmob/j;->g:I

    if-eq v0, v4, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/revmob/j;->f:I

    iget v2, p0, Lcom/revmob/j;->g:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v0}, Lcom/revmob/RevMob;->access$302(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/revmob/j;->d:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/revmob/j;->e:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v0, p0, Lcom/revmob/j;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v1

    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/j;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/revmob/RevMob;->access$202(Landroid/app/Activity;)Landroid/app/Activity;

    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/revmob/j;->i:Lcom/revmob/RevMob;

    iget-object v2, p0, Lcom/revmob/j;->a:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/revmob/RevMob;->access$400(Lcom/revmob/RevMob;Landroid/app/Activity;)I

    move-result v1

    sget v2, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_HEIGHT_IN_DIP:F

    iget-object v3, p0, Lcom/revmob/j;->i:Lcom/revmob/RevMob;

    iget-object v4, p0, Lcom/revmob/j;->a:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/revmob/RevMob;->access$400(Lcom/revmob/RevMob;Landroid/app/Activity;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Lcom/revmob/ads/banner/RevMobBanner;->DEFAULT_WIDTH_IN_DIP:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v0}, Lcom/revmob/RevMob;->access$302(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/revmob/RevMob;->access$300()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/revmob/j;->h:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "preloadBanner"

    invoke-static {v0, v5, v1, v5, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
