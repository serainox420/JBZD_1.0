.class public Lcom/google/android/gms/internal/zzcc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcc$zza;
    }
.end annotation


# static fields
.field public static final zzrl:Lcom/google/android/gms/internal/zzcc;

.field private static zzrm:Lcom/google/android/gms/internal/zzcc$zza;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcc;

    const-string v1, "@@ContextManagerNullAccount@@"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcc;->zzrl:Lcom/google/android/gms/internal/zzcc;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzcc;->zzrm:Lcom/google/android/gms/internal/zzcc$zza;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcc;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzcc;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcc;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcc;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcc;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcc;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "#account#"

    return-object v0
.end method
