.class public Lcom/google/android/gms/internal/zzboc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbod",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzcaY:Lcom/google/android/gms/internal/zzboc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzboc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzboc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzboc;->zzcaY:Lcom/google/android/gms/internal/zzboc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzXb()Lcom/google/android/gms/internal/zzboc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzboc",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzboc;->zzcaY:Lcom/google/android/gms/internal/zzboc;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzXa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzXc()Lcom/google/android/gms/internal/zzbod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zzXd()Lcom/google/android/gms/internal/zzbod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zzXe()Lcom/google/android/gms/internal/zzbod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zzXf()Lcom/google/android/gms/internal/zzbod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zzXg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbod$zza;Lcom/google/android/gms/internal/zzbod;Lcom/google/android/gms/internal/zzbod;)Lcom/google/android/gms/internal/zzbod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/zzbod$zza;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzboe;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzboe;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzbod;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/zzbod",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbod$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbod$zzb",
            "<TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method
