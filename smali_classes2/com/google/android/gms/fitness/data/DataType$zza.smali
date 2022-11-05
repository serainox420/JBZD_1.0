.class public final Lcom/google/android/gms/fitness/data/DataType$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/DataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final zzaTb:Lcom/google/android/gms/fitness/data/DataType;

.field public static final zzaTc:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.internal.session.debug"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTK:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType$zza;->zzaTb:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const-string v1, "com.google.internal.session.v2"

    new-array v2, v5, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field$zza;->zzaTL:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType$zza;->zzaTc:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method
