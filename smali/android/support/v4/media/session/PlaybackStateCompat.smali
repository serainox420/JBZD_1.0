.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompat$a;,
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:F

.field final e:J

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:J

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field final j:J

.field final k:Landroid/os/Bundle;

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 779
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$1;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJI",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    .line 491
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    .line 492
    iput-wide p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    .line 493
    iput p6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    .line 494
    iput-wide p7, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 495
    iput p9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:I

    .line 496
    iput-object p10, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    .line 497
    iput-wide p11, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    .line 499
    move-wide/from16 v0, p14

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    .line 500
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Landroid/os/Bundle;

    .line 501
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 510
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    .line 511
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Landroid/os/Bundle;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:I

    .line 516
    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 19

    .prologue
    .line 716
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 717
    :cond_0
    const/4 v2, 0x0

    .line 744
    :goto_0
    return-object v2

    .line 720
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 721
    const/4 v15, 0x0

    .line 722
    if-eqz v2, :cond_2

    .line 723
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 725
    invoke-static {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 728
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_3

    .line 729
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/k;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v18

    .line 731
    :goto_2
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 732
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->a(Ljava/lang/Object;)I

    move-result v3

    .line 733
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->b(Ljava/lang/Object;)J

    move-result-wide v4

    .line 734
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->c(Ljava/lang/Object;)J

    move-result-wide v6

    .line 735
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->d(Ljava/lang/Object;)F

    move-result v8

    .line 736
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->e(Ljava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    .line 738
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 739
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->g(Ljava/lang/Object;)J

    move-result-wide v13

    .line 741
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/j;->i(Ljava/lang/Object;)J

    move-result-wide v16

    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 743
    move-object/from16 v0, p0

    iput-object v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Ljava/lang/Object;

    goto :goto_0

    .line 729
    :cond_3
    const/16 v18, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 581
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    return-wide v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 632
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 682
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    return-wide v0
.end method

.method public f()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Ljava/lang/Object;

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 757
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Ljava/lang/Object;

    .line 776
    :goto_0
    return-object v2

    .line 760
    :cond_1
    const/4 v14, 0x0

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 762
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 764
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 767
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_3

    .line 768
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Landroid/os/Bundle;

    move-object/from16 v17, v0

    invoke-static/range {v3 .. v17}, Landroid/support/v4/media/session/k;->a(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Ljava/lang/Object;

    .line 776
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Ljava/lang/Object;

    goto :goto_0

    .line 772
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    invoke-static/range {v3 .. v16}, Landroid/support/v4/media/session/j;->a(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Ljava/lang/Object;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 526
    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 527
    const-string v1, ", error code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    const-string v1, ", error message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 545
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 546
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 547
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 549
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 550
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 551
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 553
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    return-void
.end method
