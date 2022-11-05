.class Lcom/google/android/gms/internal/zzbli$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# static fields
.field private static final zzbWg:Lcom/google/android/gms/internal/zzbll;

.field private static final zzbWh:Lcom/google/android/gms/internal/zzbll;

.field private static final zzbWi:Lcom/google/android/gms/internal/zzbll;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbll;

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/google/android/gms/internal/zzbll;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/zzbli$zza;->zzbWg:Lcom/google/android/gms/internal/zzbll;

    new-instance v0, Lcom/google/android/gms/internal/zzbll;

    invoke-direct {v0, v4, v1, v2, v2}, Lcom/google/android/gms/internal/zzbll;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/zzbli$zza;->zzbWh:Lcom/google/android/gms/internal/zzbll;

    new-instance v0, Lcom/google/android/gms/internal/zzbll;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/google/android/gms/internal/zzbll;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/zzbli$zza;->zzbWi:Lcom/google/android/gms/internal/zzbll;

    return-void
.end method

.method static synthetic zzUP()Lcom/google/android/gms/internal/zzbll;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbli$zza;->zzbWg:Lcom/google/android/gms/internal/zzbll;

    return-object v0
.end method

.method static synthetic zzUQ()Lcom/google/android/gms/internal/zzbll;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbli$zza;->zzbWh:Lcom/google/android/gms/internal/zzbll;

    return-object v0
.end method

.method static synthetic zzUR()Lcom/google/android/gms/internal/zzbll;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbli$zza;->zzbWi:Lcom/google/android/gms/internal/zzbll;

    return-object v0
.end method
