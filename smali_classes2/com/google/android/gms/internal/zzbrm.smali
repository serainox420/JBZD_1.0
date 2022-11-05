.class public Lcom/google/android/gms/internal/zzbrm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbro;


# instance fields
.field private final zzciJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzciK:Lcom/google/android/gms/internal/zzbro$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbro$zza;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzciJ:Ljava/util/Set;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrm;->zzciK:Lcom/google/android/gms/internal/zzbro$zza;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzciJ:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public zzYe()Lcom/google/android/gms/internal/zzbro$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzciK:Lcom/google/android/gms/internal/zzbro$zza;

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbro$zza;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzbro$zza;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrm;->zzciK:Lcom/google/android/gms/internal/zzbro$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzciJ:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/zzbro$zza;->zzciM:Lcom/google/android/gms/internal/zzbro$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrm;->zzciJ:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzau(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzav(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzaw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected zzax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbro$zza;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbrm;->zza(Lcom/google/android/gms/internal/zzbro$zza;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbrm;->zza(Lcom/google/android/gms/internal/zzbro$zza;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbrm$1;->zzcdc:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbro$zza;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not reach here!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzbrm;->zzau(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzbrm;->zzav(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzbrm;->zzaw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzbrm;->zzax(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
