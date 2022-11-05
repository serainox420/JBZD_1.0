.class public abstract Lcom/google/android/gms/internal/zzblh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzblh$zzb;,
        Lcom/google/android/gms/internal/zzblh$zzc;,
        Lcom/google/android/gms/internal/zzblh$zza;
    }
.end annotation


# static fields
.field private static final zzbWb:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/gms/internal/zzblh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzblh$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblh$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzblh;->zzbWb:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzUI()Lcom/google/android/gms/internal/zzblh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzblh;->zzbWb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzblh;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/zzblh$zza;)V
.end method
