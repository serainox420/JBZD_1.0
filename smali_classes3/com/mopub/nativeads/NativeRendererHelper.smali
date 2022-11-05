.class public Lcom/mopub/nativeads/NativeRendererHelper;
.super Ljava/lang/Object;
.source "NativeRendererHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCtaButton(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p0, p2}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 96
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Lcom/mopub/nativeads/NativeRendererHelper$2;

    invoke-direct {v0, p1}, Lcom/mopub/nativeads/NativeRendererHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    if-nez p2, :cond_2

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 67
    if-nez p1, :cond_3

    .line 68
    sget-object v1, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v1, v0}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :goto_1
    new-instance v1, Lcom/mopub/nativeads/NativeRendererHelper$1;

    invoke-direct {v1, v0, p2}, Lcom/mopub/nativeads/NativeRendererHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {p1, p0}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public static addTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add text ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to null TextView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    if-nez p1, :cond_1

    .line 32
    const-string v0, "Attempted to set TextView contents to null."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static updateExtras(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 113
    if-nez p0, :cond_1

    .line 114
    const-string v0, "Attempted to bind extras on a null main view."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 120
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 125
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 128
    check-cast v0, Ljava/lang/String;

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 130
    :cond_3
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 132
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 134
    check-cast v2, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View bound to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should be an instance of TextView or ImageView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
