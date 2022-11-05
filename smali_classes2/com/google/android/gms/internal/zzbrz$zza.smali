.class public final enum Lcom/google/android/gms/internal/zzbrz$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbrz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbrz$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcju:Lcom/google/android/gms/internal/zzbrz$zza;

.field public static final enum zzcjv:Lcom/google/android/gms/internal/zzbrz$zza;

.field public static final enum zzcjw:Lcom/google/android/gms/internal/zzbrz$zza;

.field public static final enum zzcjx:Lcom/google/android/gms/internal/zzbrz$zza;

.field private static final synthetic zzcjy:[Lcom/google/android/gms/internal/zzbrz$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbrz$zza;

    const-string v1, "DeferredValue"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrz$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcju:Lcom/google/android/gms/internal/zzbrz$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbrz$zza;

    const-string v1, "Boolean"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbrz$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjv:Lcom/google/android/gms/internal/zzbrz$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbrz$zza;

    const-string v1, "Number"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzbrz$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjw:Lcom/google/android/gms/internal/zzbrz$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbrz$zza;

    const-string v1, "String"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzbrz$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjx:Lcom/google/android/gms/internal/zzbrz$zza;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbrz$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbrz$zza;->zzcju:Lcom/google/android/gms/internal/zzbrz$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjv:Lcom/google/android/gms/internal/zzbrz$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjw:Lcom/google/android/gms/internal/zzbrz$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjx:Lcom/google/android/gms/internal/zzbrz$zza;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjy:[Lcom/google/android/gms/internal/zzbrz$zza;

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

.method public static values()[Lcom/google/android/gms/internal/zzbrz$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrz$zza;->zzcjy:[Lcom/google/android/gms/internal/zzbrz$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbrz$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbrz$zza;

    return-object v0
.end method
