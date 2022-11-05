.class public final Landroid/support/v4/media/session/PlaybackStateCompat$a;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:J

.field private d:J

.field private e:F

.field private f:J

.field private g:I

.field private h:Ljava/lang/CharSequence;

.field private i:J

.field private j:J

.field private k:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    .line 1023
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    .line 1030
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    .line 1023
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    .line 1039
    iget v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:I

    .line 1040
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:J

    .line 1041
    iget v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:F

    .line 1042
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:J

    .line 1043
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->d:J

    .line 1044
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:J

    .line 1045
    iget v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->f:I

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->g:I

    .line 1046
    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->h:Ljava/lang/CharSequence;

    .line 1047
    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1050
    :cond_0
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    .line 1051
    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->k:Landroid/os/Bundle;

    .line 1052
    return-void
.end method


# virtual methods
.method public a(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$a;
    .locals 8

    .prologue
    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    move-result-object v0

    return-object v0
.end method

.method public a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$a;
    .locals 0

    .prologue
    .line 1125
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:I

    .line 1126
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:J

    .line 1127
    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:J

    .line 1128
    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:F

    .line 1129
    return-object p0
.end method

.method public a(J)Landroid/support/v4/media/session/PlaybackStateCompat$a;
    .locals 1

    .prologue
    .line 1173
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:J

    .line 1174
    return-object p0
.end method

.method public a()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 19

    .prologue
    .line 1274
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->d:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->g:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:J

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->k:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-object v2
.end method
