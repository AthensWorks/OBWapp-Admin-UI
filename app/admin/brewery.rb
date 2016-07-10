ActiveAdmin.register Brewery do
  active_admin_import validate: true

  controller do
    def permitted_params
      params.permit!
    end
  end

  show do
    attributes_table do
      row :name
      row :address
      row :lat
      row :lon
      row :description
      row :map do |e|
        text_node google_map(e.lat, e.lon)
      end
    end
  end

  form do |f|
    f.inputs "Brewery" do
      f.input :name
      f.input :address
      f.input :lat
      f.input :lon
      f.input :description, input_html: { rows: 5 }
    end

    f.actions
  end

  index do
    id_column
    column :name
    column :address
    column :description do |b|
      truncate(b.description, length: 50)
    end
    actions
  end

end
