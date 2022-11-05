.class public Lcom/google/android/gms/internal/zzblx;
.super Ljava/lang/Object;


# direct methods
.method public static zzVQ()Lcom/google/android/gms/internal/zzbuk;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzblw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblw;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzbmf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbmf;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzbme;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbme;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzbul;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbul;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbul;->zzf([I)Lcom/google/android/gms/internal/zzbul;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbul;->zzadg()Lcom/google/android/gms/internal/zzbul;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/zzbug;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/gms/internal/zzblr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzblr;-><init>()V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbul;->zza([Lcom/google/android/gms/internal/zzbug;)Lcom/google/android/gms/internal/zzbul;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/zzbml;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzbul;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbul;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/zzbmv;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzbul;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbul;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/zzbmr;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzbul;->zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbul;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbul;->zzadh()Lcom/google/android/gms/internal/zzbuk;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzblw;->zza(Lcom/google/android/gms/internal/zzbuk;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzbmf;->zza(Lcom/google/android/gms/internal/zzbuk;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbme;->zza(Lcom/google/android/gms/internal/zzbuk;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x8
        0x80
        0x40
    .end array-data
.end method
