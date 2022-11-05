.class public final Lcom/google/android/gms/internal/zzbma;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbma$zza;
    }
.end annotation


# static fields
.field public static final zzaid:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzblt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbYf:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzblt;",
            "Lcom/google/android/gms/internal/zzbma$zza;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbYg:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/internal/zzbma$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbma;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzbma$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbma$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbma;->zzbYf:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "InternalFirebaseAuth.FIREBASE_AUTH_API"

    sget-object v2, Lcom/google/android/gms/internal/zzbma;->zzbYf:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzbma;->zzaid:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbma;->zzbYg:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbma$zza;)Lcom/google/android/gms/internal/zzbls;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbls;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbls;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbma$zza;)V

    return-object v0
.end method
