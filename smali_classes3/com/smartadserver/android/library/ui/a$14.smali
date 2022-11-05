.class Lcom/smartadserver/android/library/ui/a$14;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 1896
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$14;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1900
    move-object v0, p1

    check-cast v0, Lcom/smartadserver/android/library/ui/a$d;

    iput-boolean v5, v0, Lcom/smartadserver/android/library/ui/a$d;->d:Z

    .line 1901
    const-string v0, ""

    .line 1902
    sparse-switch p2, :sswitch_data_0

    .line 1922
    const-string v0, "MEDIA_ERROR_UNKNOWN"

    move-object v1, v0

    .line 1927
    :goto_0
    const-string v0, ""

    .line 1928
    sparse-switch p3, :sswitch_data_1

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1953
    :goto_1
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SASMediaPlayer onError: what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 1955
    check-cast v0, Lcom/smartadserver/android/library/ui/a$d;

    iput-object v1, v0, Lcom/smartadserver/android/library/ui/a$d;->e:Ljava/lang/String;

    move-object v0, p1

    .line 1956
    check-cast v0, Lcom/smartadserver/android/library/ui/a$d;

    iput-object v2, v0, Lcom/smartadserver/android/library/ui/a$d;->f:Ljava/lang/String;

    .line 1958
    const/4 v0, 0x0

    .line 1960
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1964
    :goto_2
    if-nez v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$14;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1967
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$14;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1968
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1970
    :cond_0
    return v5

    .line 1904
    :sswitch_0
    const-string v0, "MEDIA_ERROR_IO"

    move-object v1, v0

    .line 1905
    goto :goto_0

    .line 1907
    :sswitch_1
    const-string v0, "MEDIA_ERROR_MALFORMED"

    move-object v1, v0

    .line 1908
    goto :goto_0

    .line 1910
    :sswitch_2
    const-string v0, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    move-object v1, v0

    .line 1911
    goto :goto_0

    .line 1913
    :sswitch_3
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    move-object v1, v0

    .line 1914
    goto :goto_0

    .line 1916
    :sswitch_4
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    move-object v1, v0

    .line 1917
    goto :goto_0

    .line 1919
    :sswitch_5
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    move-object v1, v0

    .line 1920
    goto :goto_0

    .line 1930
    :sswitch_6
    const-string v0, "MEDIA_ERROR_IO"

    move-object v2, v0

    .line 1931
    goto :goto_1

    .line 1933
    :sswitch_7
    const-string v0, "MEDIA_ERROR_MALFORMED"

    move-object v2, v0

    .line 1934
    goto :goto_1

    .line 1936
    :sswitch_8
    const-string v0, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    move-object v2, v0

    .line 1937
    goto :goto_1

    .line 1939
    :sswitch_9
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    move-object v2, v0

    .line 1940
    goto :goto_1

    .line 1942
    :sswitch_a
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    move-object v2, v0

    .line 1943
    goto :goto_1

    .line 1945
    :sswitch_b
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    move-object v2, v0

    .line 1946
    goto :goto_1

    .line 1968
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1961
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1902
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_5
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_4
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_2
    .end sparse-switch

    .line 1928
    :sswitch_data_1
    .sparse-switch
        -0x3f2 -> :sswitch_b
        -0x3ef -> :sswitch_7
        -0x3ec -> :sswitch_6
        -0x6e -> :sswitch_a
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_8
    .end sparse-switch
.end method
