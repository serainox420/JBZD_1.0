.class Lpl/jbzd/app/view/gallery/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->c(Lpl/jbzd/app/view/gallery/GalleryActivity;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "Galeria"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 192
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(Lpl/jbzd/app/view/gallery/GalleryActivity;Z)V

    .line 152
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Media;)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Komentarze"

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "klik w button z tre\u015bci"

    .line 160
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    .line 165
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->b(Lpl/jbzd/app/view/gallery/GalleryActivity;)Lpl/jbzd/app/view/gallery/GalleryAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Z)Z

    .line 184
    return-void
.end method

.method public b(Landroid/view/View;Lpl/jbzd/app/model/Media;)V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Social"

    .line 172
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Share obrazka"

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$share_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lpl/jbzd/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryActivity$2;->a:Lpl/jbzd/app/view/gallery/GalleryActivity;

    const v3, 0x7f0a0116

    invoke-virtual {v2, v3}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method
