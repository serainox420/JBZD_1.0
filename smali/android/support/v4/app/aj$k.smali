.class Landroid/support/v4/app/aj$k;
.super Landroid/support/v4/app/aj$j;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Landroid/support/v4/app/aj$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/aj$d;Landroid/support/v4/app/aj$e;)Landroid/app/Notification;
    .locals 34

    .prologue
    .line 865
    new-instance v2, Landroid/support/v4/app/am$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/aj$d;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/aj$d;->c:Ljava/lang/CharSequence;

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

    iget-boolean v0, v0, Landroid/support/v4/app/aj$d;->k:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/aj$d;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/aj$d;->j:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/aj$d;->w:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->x:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->G:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->y:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/aj$d;->z:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/aj$d;->A:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->B:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->s:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/aj$d;->t:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->u:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->o:[Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->C:Landroid/widget/RemoteViews;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->D:Landroid/widget/RemoteViews;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/aj$d;->E:Landroid/widget/RemoteViews;

    move-object/from16 v33, v0

    invoke-direct/range {v2 .. v33}, Landroid/support/v4/app/am$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 873
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->v:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/aj;->a(Landroid/support/v4/app/ah;Ljava/util/ArrayList;)V

    .line 874
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    invoke-static {v2, v3}, Landroid/support/v4/app/aj;->b(Landroid/support/v4/app/ai;Landroid/support/v4/app/aj$q;)V

    .line 875
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aj$e;->a(Landroid/support/v4/app/aj$d;Landroid/support/v4/app/ai;)Landroid/app/Notification;

    move-result-object v2

    .line 876
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    if-eqz v3, :cond_0

    .line 877
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aj$k;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/aj$q;->a(Landroid/os/Bundle;)V

    .line 879
    :cond_0
    return-object v2
.end method
