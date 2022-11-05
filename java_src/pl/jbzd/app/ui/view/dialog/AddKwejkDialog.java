package pl.jbzd.app.ui.view.dialog;

import android.annotation.SuppressLint;
import android.app.DialogFragment;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.mobsandgeeks.saripaar.ValidationError;
import com.mobsandgeeks.saripaar.Validator;
import com.mobsandgeeks.saripaar.annotation.NotEmpty;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.SimpleApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.TagsResponse;
import pl.jbzd.app.ui.view.TagGroup;
import pl.jbzd.core.a.b;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes.dex */
public class AddKwejkDialog extends DialogFragment implements Validator.ValidationListener {

    /* renamed from: a  reason: collision with root package name */
    private Unbinder f5924a;
    private Validator b;
    @BindView
    TextView button;
    private Bitmap c;
    @BindView
    ImageView close;
    private File d;
    private ArrayList<String> e = new ArrayList<>();
    @BindView
    ImageView image;
    @BindView
    LoaderLayout loader;
    @BindView
    TagGroup tagList;
    @BindView
    @NotEmpty(message = "Lista tagów nie może być pusta")
    EditText tags;
    @BindView
    @NotEmpty(message = "Tytuł nie może pozostać pusty")
    EditText title;

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(AddKwejkDialog addKwejkDialog, View view);

        boolean a(AddKwejkDialog addKwejkDialog, View view, String str, List<String> list, File file);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.TranslucentDialog);
        if (bundle == null) {
            ApiClient.getApiService().media_default_tags(ApiClient.getToken()).enqueue(new SimpleApiCallback<TagsResponse>() { // from class: pl.jbzd.app.ui.view.dialog.AddKwejkDialog.1
                @Override // pl.jbzd.api.callback.SimpleApiCallback
                /* renamed from: a */
                public void onSuccess(TagsResponse tagsResponse) {
                    if (tagsResponse != null && tagsResponse.tags != null && tagsResponse.tags.tags != null && !tagsResponse.tags.tags.isEmpty()) {
                        ArrayList arrayList = new ArrayList();
                        for (String str : tagsResponse.tags.tags) {
                            if (!str.trim().isEmpty()) {
                                arrayList.add("#" + str.trim());
                            }
                        }
                        AddKwejkDialog.this.e = arrayList;
                    }
                    if (AddKwejkDialog.this.isAdded() && AddKwejkDialog.this.isVisible() && AddKwejkDialog.this.tagList != null) {
                        AddKwejkDialog.this.tagList.setTags(AddKwejkDialog.this.e);
                    }
                }

                @Override // pl.jbzd.api.callback.SimpleApiCallback
                public void onError(ApiException apiException) {
                    if (apiException.message().equalsIgnoreCase("token jest nieprawidłowy") && AddKwejkDialog.this.getActivity() != null && !AddKwejkDialog.this.getActivity().isFinishing()) {
                        ApiClient.getInstance().logout(AddKwejkDialog.this.getActivity());
                        Toast.makeText(AddKwejkDialog.this.getActivity(), (int) R.string.error_not_logged, 0).show();
                    }
                    if (AddKwejkDialog.this.isAdded() && AddKwejkDialog.this.isVisible()) {
                        AddKwejkDialog.this.dismissAllowingStateLoss();
                    }
                }
            });
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_add_kwejk, viewGroup);
        this.f5924a = ButterKnife.a(this, inflate);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        File file;
        super.onViewCreated(view, bundle);
        this.b = new Validator(this);
        this.b.setValidationListener(this);
        getDialog().getWindow().setSoftInputMode(2);
        getDialog().getWindow().requestFeature(1);
        getDialog().getWindow().setLayout(-1, -1);
        getDialog().getWindow().setGravity(7);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setCanceledOnTouchOutside(false);
        this.button.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.AddKwejkDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AddKwejkDialog.this.b.validate();
            }
        });
        this.close.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.dialog.AddKwejkDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                a aVar = (a) AddKwejkDialog.this.getActivity();
                if (aVar != null && !aVar.a(AddKwejkDialog.this, view2)) {
                    AddKwejkDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        this.tagList.setOnTagClickListener(new TagGroup.c() { // from class: pl.jbzd.app.ui.view.dialog.AddKwejkDialog.4
            @Override // pl.jbzd.app.ui.view.TagGroup.c
            public void a(String str) {
                AddKwejkDialog.this.a(str);
            }
        });
        this.tags.addTextChangedListener(new TextWatcher() { // from class: pl.jbzd.app.ui.view.dialog.AddKwejkDialog.5
            private boolean b = false;
            private int c = 0;
            private boolean d = false;
            private char e = '#';

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!this.d) {
                    this.c = i2;
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                boolean z = true;
                if (!this.d) {
                    if (charSequence.length() > 0 && i < charSequence.length()) {
                        this.e = charSequence.charAt(i);
                        if (this.c <= i3) {
                            z = false;
                        }
                        this.b = z;
                        return;
                    }
                    this.b = true;
                }
            }

            @Override // android.text.TextWatcher
            @SuppressLint({"SetTextI18n"})
            public void afterTextChanged(Editable editable) {
                boolean z = true;
                if (!this.d) {
                    String obj = editable.toString();
                    int length = editable.length();
                    if (!this.b && length >= 1) {
                        if (!Character.isLetterOrDigit(this.e) && !Character.isSpaceChar(this.e) && this.e != '#' && this.e != ',' && this.e != '.') {
                            this.d = true;
                            if (obj.charAt(length - 1) != '#') {
                                z = false;
                            }
                            AddKwejkDialog.this.b(obj);
                            if (z) {
                                AddKwejkDialog.this.tags.append("#");
                            }
                            this.d = false;
                        } else if (length > 1) {
                            if (this.e == ' ' || this.e == '#' || this.e == ',' || this.e == '.') {
                                this.d = true;
                                AddKwejkDialog.this.b(obj);
                                AddKwejkDialog.this.tags.append("#");
                                this.d = false;
                            }
                        } else if (this.e != ' ' && this.e != '#' && this.e != ',' && this.e != '.') {
                            if (Character.isLetterOrDigit(this.e)) {
                                this.d = true;
                                AddKwejkDialog.this.tags.setText("#" + this.e);
                                AddKwejkDialog.this.tags.setSelection(2);
                                this.d = false;
                            }
                        } else {
                            this.d = true;
                            AddKwejkDialog.this.tags.setText("#");
                            AddKwejkDialog.this.tags.setSelection(1);
                            this.d = false;
                        }
                    }
                }
            }
        });
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("tags");
            if (stringArrayList != null) {
                this.e = stringArrayList;
            }
            String string = bundle.getString("path", null);
            if (string != null && (file = new File(string)) != null) {
                a(file);
            }
        } else if (this.d != null) {
            a(this.d);
        }
        if (!this.e.isEmpty()) {
            this.tagList.setTags(this.e);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            if (this.c != null && !this.c.isRecycled()) {
                this.c.recycle();
            }
            if (this.d != null) {
                bundle.putString("path", this.d.getAbsolutePath());
            }
            bundle.putStringArrayList("tags", this.e);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f5924a != null) {
            this.f5924a.a();
        }
        if (this.c != null && !this.c.isRecycled()) {
            this.c.recycle();
        }
    }

    public void a(boolean z) {
        if (this.loader != null) {
            this.loader.setVisibility(z ? 0 : 8);
        }
    }

    public void a(File file) {
        Bitmap bitmap;
        this.d = file;
        if (this.image != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            options.inJustDecodeBounds = false;
            options.inSampleSize = (int) (800.0f / options.outWidth);
            float f = 800.0f / options.outWidth;
            try {
                Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                if (f < 1.2d) {
                    decodeFile = Bitmap.createScaledBitmap(decodeFile, (int) (options.outWidth * f), (int) (options.outHeight * f), false);
                }
                bitmap = b.a(decodeFile, file.getAbsolutePath());
            } catch (Exception e) {
                e.printStackTrace();
                bitmap = null;
            }
            if (bitmap != null) {
                if (this.c != null && !this.c.equals(bitmap) && !this.c.isRecycled()) {
                    this.c.recycle();
                }
                this.c = bitmap;
                this.image.setImageBitmap(bitmap);
                int b = pl.jbzd.core.a.a.b(getActivity()) - (pl.jbzd.core.a.a.a(38) * 2);
                if (b < bitmap.getWidth()) {
                    float width = b / bitmap.getWidth();
                    this.image.getLayoutParams().width = (int) (bitmap.getWidth() * width);
                    this.image.getLayoutParams().height = (int) (bitmap.getHeight() * width);
                }
            }
        }
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationSucceeded() {
        a aVar = (a) getActivity();
        if (aVar != null) {
            ((InputMethodManager) this.title.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.title.getWindowToken(), 2);
            ArrayList<String> arrayList = new ArrayList(Arrays.asList(this.tags.getText().toString().trim().split("\\s+")));
            ArrayList arrayList2 = new ArrayList();
            for (String str : arrayList) {
                String a2 = a(str, false);
                if (!a2.isEmpty()) {
                    String lowerCase = a2.toLowerCase();
                    if (arrayList2.indexOf(lowerCase) == -1) {
                        arrayList2.add(lowerCase);
                    }
                }
            }
            if (!aVar.a(this, this.button, this.title.getText().toString().trim(), arrayList2, this.d)) {
                dismissAllowingStateLoss();
            }
        }
    }

    @Override // android.app.DialogFragment
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        if (this.c != null && !this.c.isRecycled()) {
            this.c.recycle();
        }
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationFailed(List<ValidationError> list) {
        if (getActivity() != null) {
            for (ValidationError validationError : list) {
                View view = validationError.getView();
                String collatedErrorMessage = validationError.getCollatedErrorMessage(getActivity());
                if (view instanceof EditText) {
                    ((EditText) view).setError(collatedErrorMessage);
                } else {
                    Toast.makeText(getActivity(), collatedErrorMessage, 0).show();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        String c = c(str);
        if (!c.isEmpty()) {
            String trim = this.tags.getText().toString().trim();
            if (trim.isEmpty()) {
                this.tags.append(c + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                return;
            }
            ArrayList<String> arrayList = new ArrayList(Arrays.asList(trim.split("\\s+")));
            if (arrayList.indexOf(c) == -1) {
                arrayList.add(c);
            }
            StringBuilder sb = new StringBuilder();
            for (String str2 : arrayList) {
                String c2 = c(str2);
                if (!c2.isEmpty()) {
                    sb.append(c2);
                    sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                }
            }
            this.tags.setText("");
            this.tags.append(sb.toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        ArrayList<String> arrayList = new ArrayList(Arrays.asList(str.split("\\s+")));
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            String c = c(str2);
            if (!c.isEmpty()) {
                sb.append(c);
                sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            }
        }
        String sb2 = sb.toString();
        this.tags.setText("");
        this.tags.append(sb2);
        return sb.toString();
    }

    private String c(String str) {
        return a(str, true);
    }

    private String a(String str, boolean z) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String replaceAll = str.trim().replaceAll("[^a-zA-Z0-9]", "");
        if (replaceAll.isEmpty()) {
            return "";
        }
        return z ? "#" + replaceAll : replaceAll;
    }
}
