.class final enum Lcom/google/android/gms/internal/zzbsm$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbsm$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcke:Lcom/google/android/gms/internal/zzbsm$zza;

.field public static final enum zzckf:Lcom/google/android/gms/internal/zzbsm$zza;

.field public static final enum zzckg:Lcom/google/android/gms/internal/zzbsm$zza;

.field public static final enum zzckh:Lcom/google/android/gms/internal/zzbsm$zza;

.field public static final enum zzcki:Lcom/google/android/gms/internal/zzbsm$zza;

.field private static final synthetic zzckj:[Lcom/google/android/gms/internal/zzbsm$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbsm$zza;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbsm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsm$zza;->zzcke:Lcom/google/android/gms/internal/zzbsm$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbsm$zza;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbsm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsm$zza;->zzckf:Lcom/google/android/gms/internal/zzbsm$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbsm$zza;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzbsm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsm$zza;->zzckg:Lcom/google/android/gms/internal/zzbsm$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbsm$zza;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzbsm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsm$zza;->zzckh:Lcom/google/android/gms/internal/zzbsm$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbsm$zza;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzbsm$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbsm$zza;->zzcki:Lcom/google/android/gms/internal/zzbsm$zza;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbsm$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbsm$zza;->zzcke:Lcom/google/android/gms/internal/zzbsm$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbsm$zza;->zzckf:Lcom/google/android/gms/internal/zzbsm$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzbsm$zza;->zzckg:Lcom/google/android/gms/internal/zzbsm$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzbsm$zza;->zzckh:Lcom/google/android/gms/internal/zzbsm$zza;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzbsm$zza;->zzcki:Lcom/google/android/gms/internal/zzbsm$zza;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/zzbsm$zza;->zzckj:[Lcom/google/android/gms/internal/zzbsm$zza;

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

.method public static values()[Lcom/google/android/gms/internal/zzbsm$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbsm$zza;->zzckj:[Lcom/google/android/gms/internal/zzbsm$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbsm$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbsm$zza;

    return-object v0
.end method
