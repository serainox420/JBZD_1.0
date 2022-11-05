.class public final enum Lcom/google/android/gms/internal/zzboj$zzb;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzboj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzboj$zzb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcbw:Lcom/google/android/gms/internal/zzboj$zzb;

.field public static final enum zzcbx:Lcom/google/android/gms/internal/zzboj$zzb;

.field private static final synthetic zzcby:[Lcom/google/android/gms/internal/zzboj$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzboj$zzb;

    const-string v1, "SERVER_RESET"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzboj$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbw:Lcom/google/android/gms/internal/zzboj$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzboj$zzb;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzboj$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbx:Lcom/google/android/gms/internal/zzboj$zzb;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzboj$zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbw:Lcom/google/android/gms/internal/zzboj$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbx:Lcom/google/android/gms/internal/zzboj$zzb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzboj$zzb;->zzcby:[Lcom/google/android/gms/internal/zzboj$zzb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzboj$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzb;->zzcby:[Lcom/google/android/gms/internal/zzboj$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzboj$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzboj$zzb;

    return-object v0
.end method
