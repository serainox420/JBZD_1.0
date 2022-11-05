.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/f;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/f$a;,
        Lcom/google/android/exoplayer2/source/dash/manifest/f$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/google/android/exoplayer2/Format;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/source/dash/manifest/e;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->a:Ljava/lang/String;

    .line 135
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->b:J

    .line 136
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->c:Lcom/google/android/exoplayer2/Format;

    .line 137
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->d:Ljava/lang/String;

    .line 138
    if-nez p7, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 140
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->f:Ljava/util/List;

    .line 141
    invoke-virtual {p6, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/h;->a(Lcom/google/android/exoplayer2/source/dash/manifest/f;)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->g:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    .line 142
    invoke-virtual {p6}, Lcom/google/android/exoplayer2/source/dash/manifest/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->e:J

    .line 143
    return-void

    .line 140
    :cond_0
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/f$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/dash/manifest/f;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/f;"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/f;->a(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/f;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/f;"
        }
    .end annotation

    .prologue
    .line 120
    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    if-eqz v2, :cond_0

    .line 121
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;

    move-object/from16 v8, p5

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;

    const-wide/16 v11, -0x1

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h$e;Ljava/util/List;Ljava/lang/String;J)V

    .line 124
    :goto_0
    return-object v2

    .line 123
    :cond_0
    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    if-eqz v2, :cond_1

    .line 124
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;

    move-object/from16 v8, p5

    check-cast v8, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h$a;Ljava/util/List;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public c()Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f;->g:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    return-object v0
.end method

.method public abstract d()Lcom/google/android/exoplayer2/source/dash/manifest/e;
.end method

.method public abstract e()Lcom/google/android/exoplayer2/source/dash/d;
.end method

.method public abstract f()Ljava/lang/String;
.end method
