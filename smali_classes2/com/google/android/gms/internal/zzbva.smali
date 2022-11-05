.class public abstract enum Lcom/google/android/gms/internal/zzbva;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbva;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcpw:Lcom/google/android/gms/internal/zzbva;

.field public static final enum zzcpx:Lcom/google/android/gms/internal/zzbva;

.field private static final synthetic zzcpy:[Lcom/google/android/gms/internal/zzbva;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbva$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbva$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbva;->zzcpw:Lcom/google/android/gms/internal/zzbva;

    new-instance v0, Lcom/google/android/gms/internal/zzbva$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbva$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbva;->zzcpx:Lcom/google/android/gms/internal/zzbva;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbva;

    sget-object v1, Lcom/google/android/gms/internal/zzbva;->zzcpw:Lcom/google/android/gms/internal/zzbva;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbva;->zzcpx:Lcom/google/android/gms/internal/zzbva;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzbva;->zzcpy:[Lcom/google/android/gms/internal/zzbva;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzbva$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbva;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzbva;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbva;->zzcpy:[Lcom/google/android/gms/internal/zzbva;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbva;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbva;

    return-object v0
.end method
