.class Landroid/support/v7/app/p$f;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/support/v7/media/g$g;",
        ">;"
    }
.end annotation


# instance fields
.field final a:F

.field final synthetic b:Landroid/support/v7/app/p;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/p;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1275
    iput-object p1, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    .line 1276
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1277
    invoke-static {p2}, Landroid/support/v7/app/t;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/app/p$f;->a:F

    .line 1278
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1282
    .line 1283
    if-nez p2, :cond_3

    .line 1284
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$layout;->mr_controller_volume_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1290
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/p$f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$g;

    .line 1291
    if-eqz v0, :cond_2

    .line 1292
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->g()Z

    move-result v5

    .line 1294
    sget v1, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1295
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1296
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    sget v1, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    .line 1299
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/MediaRouteVolumeSlider;

    .line 1301
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    iget-object v6, v6, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    .line 1300
    invoke-static {v2, v1, v6}, Landroid/support/v7/app/t;->a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 1302
    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 1303
    iget-object v2, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->o:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    if-nez v5, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->a(Z)V

    .line 1305
    invoke-virtual {v1, v5}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    .line 1306
    if-eqz v5, :cond_0

    .line 1307
    iget-object v2, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/p;->a(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1308
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1309
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1310
    iget-object v2, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->m:Landroid/support/v7/app/p$e;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1318
    :cond_0
    :goto_2
    sget v1, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    .line 1319
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1320
    if-eqz v5, :cond_6

    const/16 v2, 0xff

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1324
    sget v1, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1325
    iget-object v2, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->k:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x4

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1329
    iget-object v1, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->j:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1331
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1332
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1333
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1334
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 1335
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1338
    :cond_2
    return-object p2

    .line 1287
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/p$f;->b:Landroid/support/v7/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/p;->a(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 1304
    goto :goto_1

    .line 1312
    :cond_5
    invoke-virtual {v1, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 1313
    invoke-virtual {v1, v8}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 1314
    invoke-virtual {v1, v4}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    goto :goto_2

    .line 1320
    :cond_6
    const/high16 v2, 0x437f0000    # 255.0f

    iget v5, p0, Landroid/support/v7/app/p$f;->a:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_3
.end method
