.class Landroid/support/v4/app/aj$o;
.super Landroid/support/v4/app/aj$l;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/aj$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/aj$d;Landroid/support/v4/app/aj$e;)Landroid/app/Notification;
    .locals 26

    .prologue
    .line 644
    new-instance v2, Landroid/support/v4/app/aq$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/aj$d;->d()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/aj$d;->c()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/aj$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/aj$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/aj$d;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/aj$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/aj$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/aj$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/aj$d;->p:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/aj$d;->q:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/aj$d;->r:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/aj$d;->l:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/aj$d;->j:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/aj$d;->w:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->y:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->s:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/aj$d;->t:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->u:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->C:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->D:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    invoke-direct/range {v2 .. v25}, Landroid/support/v4/app/aq$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 650
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->v:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/aj;->a(Landroid/support/v4/app/ah;Ljava/util/ArrayList;)V

    .line 651
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    invoke-static {v2, v3}, Landroid/support/v4/app/aj;->a(Landroid/support/v4/app/ai;Landroid/support/v4/app/aj$q;)V

    .line 652
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aj$e;->a(Landroid/support/v4/app/aj$d;Landroid/support/v4/app/ai;)Landroid/app/Notification;

    move-result-object v2

    .line 653
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    if-eqz v3, :cond_0

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aj$o;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    .line 655
    if-eqz v3, :cond_0

    .line 656
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/aj$q;->a(Landroid/os/Bundle;)V

    .line 659
    :cond_0
    return-object v2
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 664
    invoke-static {p1}, Landroid/support/v4/app/aq;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
