.class public Landroid/support/v4/app/aj$d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field A:I

.field B:Landroid/app/Notification;

.field C:Landroid/widget/RemoteViews;

.field D:Landroid/widget/RemoteViews;

.field E:Landroid/widget/RemoteViews;

.field public F:Landroid/app/Notification;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public c:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public h:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public i:I
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field j:I

.field k:Z

.field public l:Z
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public m:Landroid/support/v4/app/aj$q;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public n:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field public o:[Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation
.end field

.field p:I

.field q:I

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Ljava/lang/String;

.field public v:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/aj$a;",
            ">;"
        }
    .end annotation
.end field

.field w:Z

.field x:Ljava/lang/String;

.field y:Landroid/os/Bundle;

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aj$d;->k:Z

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aj$d;->v:Ljava/util/ArrayList;

    .line 1044
    iput-boolean v4, p0, Landroid/support/v4/app/aj$d;->w:Z

    .line 1047
    iput v4, p0, Landroid/support/v4/app/aj$d;->z:I

    .line 1048
    iput v4, p0, Landroid/support/v4/app/aj$d;->A:I

    .line 1055
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    .line 1071
    iput-object p1, p0, Landroid/support/v4/app/aj$d;->a:Landroid/content/Context;

    .line 1074
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 1075
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1076
    iput v4, p0, Landroid/support/v4/app/aj$d;->j:I

    .line 1077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aj$d;->G:Ljava/util/ArrayList;

    .line 1078
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1445
    if-eqz p2, :cond_0

    .line 1446
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1450
    :goto_0
    return-void

    .line 1448
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1764
    if-nez p0, :cond_1

    .line 1768
    :cond_0
    :goto_0
    return-object p0

    .line 1765
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1766
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1752
    sget-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    invoke-virtual {p0}, Landroid/support/v4/app/aj$d;->b()Landroid/support/v4/app/aj$e;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/aj$h;->a(Landroid/support/v4/app/aj$d;Landroid/support/v4/app/aj$e;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1123
    return-object p0
.end method

.method public a(IIZ)Landroid/support/v4/app/aj$d;
    .locals 0

    .prologue
    .line 1214
    iput p1, p0, Landroid/support/v4/app/aj$d;->p:I

    .line 1215
    iput p2, p0, Landroid/support/v4/app/aj$d;->q:I

    .line 1216
    iput-boolean p3, p0, Landroid/support/v4/app/aj$d;->r:Z

    .line 1217
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->v:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/aj$a;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/aj$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 1086
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Landroid/support/v4/app/aj$d;->d:Landroid/app/PendingIntent;

    .line 1238
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/aj$d;
    .locals 0

    .prologue
    .line 1301
    iput-object p1, p0, Landroid/support/v4/app/aj$d;->g:Landroid/graphics/Bitmap;

    .line 1302
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/app/aj$d;
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1315
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1316
    return-object p0
.end method

.method public a(Landroid/support/v4/app/aj$q;)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    if-eq v0, p1, :cond_0

    .line 1648
    iput-object p1, p0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    .line 1649
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->m:Landroid/support/v4/app/aj$q;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/aj$q;->a(Landroid/support/v4/app/aj$d;)V

    .line 1653
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1146
    invoke-static {p1}, Landroid/support/v4/app/aj$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/aj$d;->b:Ljava/lang/CharSequence;

    .line 1147
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/aj$d;
    .locals 0

    .prologue
    .line 1513
    iput-object p1, p0, Landroid/support/v4/app/aj$d;->s:Ljava/lang/String;

    .line 1514
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/aj$d;->a(IZ)V

    .line 1380
    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/aj$d;
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1438
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1441
    :cond_0
    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1250
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1154
    invoke-static {p1}, Landroid/support/v4/app/aj$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/aj$d;->c:Ljava/lang/CharSequence;

    .line 1155
    return-object p0
.end method

.method public b(Z)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1388
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/aj$d;->a(IZ)V

    .line 1389
    return-object p0
.end method

.method protected b()Landroid/support/v4/app/aj$e;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 1760
    new-instance v0, Landroid/support/v4/app/aj$e;

    invoke-direct {v0}, Landroid/support/v4/app/aj$e;-><init>()V

    return-object v0
.end method

.method public c(I)Landroid/support/v4/app/aj$d;
    .locals 0

    .prologue
    .line 1664
    iput p1, p0, Landroid/support/v4/app/aj$d;->z:I

    .line 1665
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->F:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/aj$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1283
    return-object p0
.end method

.method public c(Z)Landroid/support/v4/app/aj$d;
    .locals 1

    .prologue
    .line 1399
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/aj$d;->a(IZ)V

    .line 1400
    return-object p0
.end method

.method protected c()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 1833
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d(Z)Landroid/support/v4/app/aj$d;
    .locals 0

    .prologue
    .line 1410
    iput-boolean p1, p0, Landroid/support/v4/app/aj$d;->w:Z

    .line 1411
    return-object p0
.end method

.method protected d()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/support/v4/app/aj$d;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
