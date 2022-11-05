.class final Landroid/support/v7/app/p$a;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 0

    .prologue
    .line 1183
    iput-object p1, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x1020019

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1189
    if-eq v2, v4, :cond_0

    const v3, 0x102001a

    if-ne v2, v3, :cond_4

    .line 1190
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->e:Landroid/support/v7/media/g$g;

    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1191
    iget-object v1, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->d:Landroid/support/v7/media/g;

    if-ne v2, v4, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/media/g;->a(I)V

    .line 1195
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->dismiss()V

    .line 1224
    :cond_3
    :goto_0
    return-void

    .line 1196
    :cond_4
    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_control_playback_ctrl:I

    if-ne v2, v3, :cond_8

    .line 1197
    iget-object v2, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v2, :cond_3

    .line 1198
    iget-object v2, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->r:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 1200
    :goto_1
    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    invoke-static {v2}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1201
    iget-object v0, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$h;->b()V

    .line 1202
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_pause:I

    .line 1211
    :goto_2
    iget-object v1, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->F:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1213
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1215
    iget-object v2, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v2, v2, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1217
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v3, v3, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-object v0, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1198
    goto :goto_1

    .line 1203
    :cond_6
    if-eqz v0, :cond_7

    iget-object v2, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    invoke-static {v2}, Landroid/support/v7/app/p;->b(Landroid/support/v7/app/p;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1204
    iget-object v0, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$h;->c()V

    .line 1205
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop:I

    goto :goto_2

    .line 1206
    :cond_7
    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    invoke-static {v0}, Landroid/support/v7/app/p;->c(Landroid/support/v7/app/p;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1207
    iget-object v0, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->p:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$h;->a()V

    .line 1208
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_play:I

    goto :goto_2

    .line 1221
    :cond_8
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_close:I

    if-ne v2, v0, :cond_3

    .line 1222
    iget-object v0, p0, Landroid/support/v7/app/p$a;->a:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->dismiss()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method
