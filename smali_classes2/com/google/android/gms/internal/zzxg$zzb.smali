.class public Lcom/google/android/gms/internal/zzxg$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzxg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzxg$zza;)Lcom/google/android/gms/internal/zzxg;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzxg;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzxg;-><init>(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzxg$zza;)V

    return-object v0
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzxg$zza;)Lcom/google/android/gms/internal/zzxg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzxg;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzxg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzxg$zza;)V

    return-object v0
.end method
