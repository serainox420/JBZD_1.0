.class public final Lcom/google/android/exoplayer2/extractor/c;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/i;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/exoplayer2/extractor/f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v1, Lcom/google/android/exoplayer2/extractor/c;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/c;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    const-string v2, "com.google.android.exoplayer2.extractor.a.d"

    .line 57
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.extractor.c.e"

    .line 64
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :goto_1
    :try_start_3
    const-string v2, "com.google.android.exoplayer2.extractor.c.g"

    .line 71
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :goto_2
    :try_start_4
    const-string v2, "com.google.android.exoplayer2.extractor.b.b"

    .line 78
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :goto_3
    :try_start_5
    const-string v2, "com.google.android.exoplayer2.extractor.f.c"

    .line 85
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 91
    :goto_4
    :try_start_6
    const-string v2, "com.google.android.exoplayer2.extractor.f.a"

    .line 92
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    :goto_5
    :try_start_7
    const-string v2, "com.google.android.exoplayer2.extractor.f.t"

    .line 99
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 98
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 105
    :goto_6
    :try_start_8
    const-string v2, "com.google.android.exoplayer2.extractor.flv.b"

    .line 106
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 105
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 112
    :goto_7
    :try_start_9
    const-string v2, "com.google.android.exoplayer2.extractor.d.c"

    .line 113
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 119
    :goto_8
    :try_start_a
    const-string v2, "com.google.android.exoplayer2.extractor.f.o"

    .line 120
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 126
    :goto_9
    :try_start_b
    const-string v2, "com.google.android.exoplayer2.extractor.g.a"

    .line 127
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 133
    :goto_a
    :try_start_c
    const-string v2, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 134
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/f;

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 139
    :goto_b
    :try_start_d
    sput-object v0, Lcom/google/android/exoplayer2/extractor/c;->a:Ljava/util/List;

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    .line 136
    :catch_0
    move-exception v2

    goto :goto_b

    .line 129
    :catch_1
    move-exception v2

    goto :goto_a

    .line 122
    :catch_2
    move-exception v2

    goto :goto_9

    .line 115
    :catch_3
    move-exception v2

    goto :goto_8

    .line 108
    :catch_4
    move-exception v2

    goto :goto_7

    .line 101
    :catch_5
    move-exception v2

    goto :goto_6

    .line 94
    :catch_6
    move-exception v2

    goto :goto_5

    .line 87
    :catch_7
    move-exception v2

    goto :goto_4

    .line 80
    :catch_8
    move-exception v2

    goto/16 :goto_3

    .line 73
    :catch_9
    move-exception v2

    goto/16 :goto_2

    .line 66
    :catch_a
    move-exception v2

    goto/16 :goto_1

    .line 59
    :catch_b
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a()[Lcom/google/android/exoplayer2/extractor/f;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 146
    sget-object v1, Lcom/google/android/exoplayer2/extractor/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lcom/google/android/exoplayer2/extractor/f;

    move v1, v0

    .line 147
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 149
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f;

    aput-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :cond_0
    return-object v2
.end method
