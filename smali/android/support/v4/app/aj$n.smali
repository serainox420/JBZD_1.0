.class Landroid/support/v4/app/aj$n;
.super Landroid/support/v4/app/aj$l;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Landroid/support/v4/app/aj$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/aj$d;Landroid/support/v4/app/aj$e;)Landroid/app/Notification;
    .locals 16

    .prologue
    .line 632
    new-instance v2, Landroid/support/v4/app/ap$a;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/aj$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    .line 634
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

    invoke-direct/range {v2 .. v15}, Landroid/support/v4/app/ap$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 637
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aj$e;->a(Landroid/support/v4/app/aj$d;Landroid/support/v4/app/ai;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method
