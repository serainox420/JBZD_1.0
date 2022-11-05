.class public Lcom/google/android/gms/internal/zzbny$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbny$zza$zza;
    }
.end annotation


# static fields
.field private static final zzcaT:Lcom/google/android/gms/internal/zzbny$zza$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbny$zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbny$zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbny$zza;->zzcaT:Lcom/google/android/gms/internal/zzbny$zza$zza;

    return-void
.end method

.method public static zzWW()Lcom/google/android/gms/internal/zzbny$zza$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzbny$zza$zza",
            "<TA;TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbny$zza;->zzcaT:Lcom/google/android/gms/internal/zzbny$zza$zza;

    return-object v0
.end method

.method public static zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbny;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/zzbny",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbnx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbnx;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbny;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/zzbny$zza$zza",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/zzbny",
            "<TA;TC;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbnx;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbnx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbog;->zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbny$zza$zza;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbog;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzb(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbny;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/zzbny",
            "<TA;TB;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbnx;->zza(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbnx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbog;->zzc(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbog;

    move-result-object v0

    goto :goto_0
.end method
